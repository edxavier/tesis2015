from apps.inicio.utils import html_to_pdf, link_callback
from django.views.generic import View
from .models import Dispositivo
__author__ = 'edx'

class Todo_Info(View):
    def get(self, request, *args, **kwargs):
        disps = Dispositivo.objects.all()
        return html_to_pdf("inventario/reportes/disp_todo.html", locals())


