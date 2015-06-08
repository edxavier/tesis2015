from datetime import datetime
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
        today = datetime.now()
        num_incidencias = Incidencia.objects.filter(creado__month=today.month, creado__year=today.year).count()
        mantto_programado = Programacion.objects.filter(creado__month=today.month, creado__year=today.year).count()
        mantto_progreso = Programacion.objects.filter(creado__month=today.month, creado__year=today.year, estado_id=2).count()
        mantto_terminado = Programacion.objects.filter(creado__month=today.month, creado__year=today.year, estado_id=4).count()

        incidentes = Incidencia.objects.all().exclude(estado_id=1)[:15]
        manttos = Programacion.objects.filter(estado_id=1).exclude(responsable=request.user)[:25]
        mis_manntos = Programacion.objects.filter(estado_id=1, responsable=request.user)
        inc_cerradas = Incidencia.objects.filter(creado__month=today.month, creado__year=today.year, estado_id=1).count()
        tasa_cumplimiento, tasa_resolucion, tasa_progreso = 0, 0, 0

        if num_incidencias > 0:
            tasa_resolucion = (inc_cerradas * 100) / num_incidencias
        if mantto_programado > 0:
            tasa_cumplimiento = (mantto_terminado * 100) / mantto_programado
        if mantto_programado > 0:
            tasa_progreso = (mantto_progreso * 100) / mantto_programado

        return render_to_response(
            'home.html', locals(), context_instance=RequestContext(request)
        )
