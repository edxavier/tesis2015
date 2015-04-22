from django.contrib import admin
from apps.inicio.utils import agregarCreador
from .models import Dispositivo, SubSistema, Componente, Servicio

# Register your models here.


@admin.register(Dispositivo)
class DispositivoAdmin(admin.ModelAdmin):
    list_display = ("posicion_logica", "serie", "inventario", "creador",)
    exclude = ('creador',)

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
