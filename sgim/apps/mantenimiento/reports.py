from apps.inventario.models import Dispositivo
from apps.catalogo.models import Personal

__author__ = 'edx'
from apps.inicio.utils import html_to_pdf, link_callback
from django.shortcuts import get_object_or_404
from django.views.generic import View
from .models import BoletaTrabajo, Programacion

class Manttos_Info(View):
    def get(self, request, disp_pk, *args, **kwargs):
        dispositivo = get_object_or_404(Dispositivo, pk=disp_pk)
        manttos = BoletaTrabajo.objects.filter(dispositivo=dispositivo)[:15]
        return html_to_pdf("inventario/reportes/disp_manttos.html", locals())

class Mantto_Detalle(View):
    def get(self, request, bol_pk, *args, **kwargs):
        mantto = get_object_or_404(BoletaTrabajo, pk=bol_pk)
        return html_to_pdf("mantto/reports/detalle_mantto.html", locals())


class Plan_Detalle(View):
    def get(self, request, _pk, *args, **kwargs):
        plan = get_object_or_404(Programacion, pk=_pk)
        personas = plan.personal.all()
        tareas = plan.rutina.tareas.all()
        return html_to_pdf("mantto/reports/detalle_plan.html", locals())


class Planes_Listado(View):
    def get(self, request,  *args, **kwargs):
        planes = Programacion.objects.all().order_by('-id')[:20]
        return html_to_pdf("mantto/reports/listado_plan.html", locals())
