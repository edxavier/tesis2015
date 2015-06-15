from django.contrib import admin
from apps.inicio.utils import agregarCreador
from .models import Dispositivo, SubSistema, Componente, Servicio

# Register your models here.


@admin.register(Dispositivo)
class DispositivoAdmin(admin.ModelAdmin):
    list_display = ("posicion_logica", "tipo", "serie", "inventario", 'activo', "creador",)
    exclude = ('creador',)
    list_filter=('creador', 'tipo', 'posicion_logica','activo')
    search_fields=('creador','tipo','posicion_logica')
    list_per_page = 10
    ordering = ['-creado']
    date_hierarchy = 'creado'
    actions = ['activar','desactivar']

    def activar(self, request, queryset):
        return queryset.update(activo=True)
    activar.short_description = 'Activar registro/s'

    def desactivar(self, request, queryset):
        return queryset.update(activo=False)
    desactivar.short_description = 'Desactivar registro/s'

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(SubSistema)
class SubSistemaAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    exclude = ('creador',)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(Componente)
class ComponenteAdmin(admin.ModelAdmin):
    list_display = ("tipo", "instalado_en", "creador",)
    exclude = ('creador',)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(Servicio)
class ServicioAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    exclude = ('creador',)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)
