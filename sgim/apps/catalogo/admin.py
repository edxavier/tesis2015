from django.contrib import admin
from apps.inicio.utils import agregarCreador
from .models import (
    Sistema, TipoDispositivo,
    Edificio, Oficina, TipoServicio,
    TipoComponente, EstadoOperacional,
    EstadoMantenimiento, Cargo, Personal,
    TipoIncidente, MedioNotificaion, EstadoIncidente,
    EstadoCambio, SeveridadUrgencia, FrecuenciaMantto
)


@admin.register(TipoDispositivo)
class TipoDispositivoAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador", "creado", "modificado")
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(Sistema)
class SistemaAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador", "creado", "modificado")
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(Edificio)
class EdificioAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador", "creado", "modificado")
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(Oficina)
class OficinaAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador", "creado", "modificado")
    fields = ("nombre","edificio")

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(TipoServicio)
class TipoServicioAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador", "creado", "modificado")
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(TipoComponente)
class TipoComponenteAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador", "creado", "modificado")
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(EstadoOperacional)
class EstadoOperacionalAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador", "creado", "modificado")
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(EstadoMantenimiento)
class EstadoMantenimientoAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(TipoIncidente)
class TipoIncidenteAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)

@admin.register(Cargo)
class CargoAdmin(admin.ModelAdmin):
    list_display = ("nombre", "empresa",)
    fields = ("nombre","empresa",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)

@admin.register(Personal)
class PersonalAdmin(admin.ModelAdmin):
    list_display = ("nombre_completo", "cargo", 'activo')
    exclude = ("creador",)
    list_filter = ('creador', 'cargo', 'activo')
    list_per_page = 10
    ordering = ['-creado']
    date_hierarchy = 'creado'
    actions = ['activar', 'desactivar', 'change_cargo']

    def activar(self, request, queryset):
        return queryset.update(activo=True)
    activar.short_description = 'Activar registro/s'

    def desactivar(self, request, queryset):
        return queryset.update(activo=False)
    desactivar.short_description = 'Desactivar registro/s'

    def change_cargo(self, request, queryset):
        return queryset.update(cargo_id=2)
    change_cargo.short_description = 'Cambiar Cargo a Controlador Aereo'

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


#***********************

@admin.register(EstadoIncidente)
class EstadoIncidenteAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    fields = ("nombre",)
    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(EstadoCambio)
class EstadoCambioAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(MedioNotificaion)
class MedioNotificaionAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)

@admin.register(SeveridadUrgencia)
class SeveridadUrgenciaAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    fields = ("nombre",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(FrecuenciaMantto)
class FrecuenciaManttoAdmin(admin.ModelAdmin):
    list_display = ("nombre", "creador",)
    exclude = ("creador",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)