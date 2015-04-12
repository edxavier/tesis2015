from django.contrib import admin
from apps.inicio.utils import agregarCreador
from apps.mantenimiento.models import Tarea, Rutina, Programacion
from apps.inventario.models import Dispositivo
from datetime import  timedelta

# Register your models here.

@admin.register(Tarea)
class TareaAdmin(admin.ModelAdmin):
    list_display = ("id","nombre", "duracion_estimada", "creado")
    exclude = ('creador',)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(Rutina)
class RutinaAdmin(admin.ModelAdmin):
    list_display = ("titulo", "sistema","equipos","tiempo_estimado","numero_tareas", "frecuencia")
    exclude = ('creador',)
    readonly_fields = ("duracion_estimada",)

    def save_model(self, request, obj, form, change):
        instance = form.save(commit=False)
        try:
            if instance.pk:
                tareas = Tarea.objects.filter(rutina__pk=instance.pk)
                Ndisp = Dispositivo.objects.filter(sistema__pk=instance.sistema.pk).count()
                minutos = 0
                for t in tareas:
                    print(t.minutos)
                    minutos += t.minutos
                instance.duracion_estimada = (minutos/60) * Ndisp
                instance.save()
            else:
                instance.creador = request.user
                instance.save()
                form.save_m2m()
                tareas = Tarea.objects.filter(rutina__pk=instance.pk)
                Ndisp = Dispositivo.objects.filter(sistema__pk=instance.sistema.pk).count()
                minutos = 0
                for t in tareas:
                    minutos += t.minutos
                instance.duracion_estimada = (minutos/60) * Ndisp
                instance.save()

        except Exception, e:
            print("EXEPTION")
            return

        return instance

@admin.register(Programacion)
class ProgramacionAdmin(admin.ModelAdmin):
    list_display = ("id","mantto","fecha_inicio_prevista","fecha_fin_prevista", "estado", "tiempo_estimado","equipos")
    exclude = ('creador',)
    readonly_fields = ('inicio','fin','fecha_fin_prevista')


    def save_model(self, request, obj, form, change):
        instance = form.save(commit=False)
        try:
            if instance.pk:
                instance.save()
            else:
                instance.creador = request.user
                instance.fecha_fin_prevista = instance.fecha_inicio_prevista + timedelta\
                    (hours=instance.rutina.duracion_estimada)
                instance.save()
        except Exception, e:
            return

        return instance



