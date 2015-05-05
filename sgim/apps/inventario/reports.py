from apps.inicio.utils import html_to_pdf, link_callback
from django.shortcuts import get_object_or_404
from django.views.generic import View
from .models import Dispositivo
from apps.incidencias.models import Incidencia
from apps.mantenimiento.models import BoletaTrabajo

__author__ = 'edx'

class Todo_Info(View):
    def get(self, request, disp_pk, *args, **kwargs):
        dispositivo = get_object_or_404(Dispositivo, pk=disp_pk)
        incidencias = Incidencia.objects.filter(dispositivo=dispositivo)[:50]
        manttos = BoletaTrabajo.objects.filter(dispositivo=dispositivo)[:50]
        return html_to_pdf("inventario/reportes/disp_todo.html", locals())


