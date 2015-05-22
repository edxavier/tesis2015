from django.contrib import admin
from apps.inicio.utils import agregarCreador
from .models import (Incidencia, ActividadIncidencia, ActividadCambio, Cambio, )

# Register your models here.

@admin.register(Incidencia)
class IncidenciaAdmin(admin.ModelAdmin):
    list_display = ("tipo", "dispositivo", "severidad", "estado")
    exclude = ("creador",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)


@admin.register(ActividadIncidencia)
class ActividadIncidenciaAdmin(admin.ModelAdmin):
    list_display = ("incidencia", "paro_equipo", "inicio_actividad", "fin_actividad")
    exclude = ("creador",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)

@admin.register(ActividadCambio)
class ActividadCambioAdmin(admin.ModelAdmin):
    list_display = ("cambio", "paro_equipo", "inicio_actividad", "fin_actividad")
    exclude = ("creador",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)

@admin.register(Cambio)
class CambioAdmin(admin.ModelAdmin):
    list_display = ("titulo", "solicitante", "responsable","inicio_previsto")
    exclude = ("creador",)

    def save_model(self, request, obj, form, change):
        return agregarCreador(request, form)