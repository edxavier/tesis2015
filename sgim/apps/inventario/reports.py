from apps.inicio.utils import html_to_pdf
from django.views.generic import View
from .models import Dispositivo
__author__ = 'edx'

class PDF(View):
    def get(self, request, *args, **kwargs):
        disps = Dispositivo.objects.all()
        return html_to_pdf("index.html", locals())


