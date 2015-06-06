from django.db.models.aggregates import Count
from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from django.template.context import RequestContext
from django.db.models import Q
# Create your views here.
from apps.incidencias.models import Incidencia, Cambio
from apps.mantenimiento.models import Programacion

class Home(TemplateView):
    def get(self, request):
        inc_pendiente = Incidencia.objects.all().exclude(estado_id=1).count()
        mantto_programado = Programacion.objects.filter(estado_id=1).count()
        mantto_progreso = Programacion.objects.filter(estado_id=2).count()
        camb_programado = Cambio.objects.filter(estado_id=1).count()

        return render_to_response(
            'home.html', locals(), context_instance=RequestContext(request)
        )
