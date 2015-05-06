from apps.inventario.models import Dispositivo

__author__ = 'edx'
from apps.inicio.utils import html_to_pdf, link_callback
from django.shortcuts import get_object_or_404
from django.views.generic import View
from .models import Incidencia

class Incidente_Detalle(View):
    def get(self, request, inc_pk, *args, **kwargs):
        incidencia = get_object_or_404(Incidencia, pk=inc_pk)
        return html_to_pdf("incidencias/reports/detalle_incidente.html", locals())


class Incidentes_Info(View):
    def get(self, request, disp_pk, *args, **kwargs):
        dispositivo = get_object_or_404(Dispositivo, pk=disp_pk)
        incidencias = Incidencia.objects.filter(dispositivo=dispositivo).order_by('-id')[:15]
        return html_to_pdf("inventario/reportes/disp_incidentes.html", locals())
