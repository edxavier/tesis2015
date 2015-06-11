from django.db.models import Count, Avg

__author__ = 'edx'
from datetime import datetime
from django.http import JsonResponse
from django.shortcuts import render_to_response, get_object_or_404

# Create your views here.
from django.template import RequestContext
from django.views.generic import View
from apps.inventario.models import Servicio, Dispositivo
from apps.catalogo.models import EstadoIncidente
from .models import *
from .statistic_serializer import *


class MonthlyStatistic(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()
        return render_to_response('mantto/estadistica_mensual.html',
            locals(), context_instance=RequestContext(request))

class YearlyStatistic(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()
        return render_to_response('mantto/estadistica_anual.html',
            locals(), context_instance=RequestContext(request))


class MonthlyStatisticJson(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()

        mantt_user = (Programacion.objects.values('responsable__username')
                    .annotate(total=Count('id'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    .order_by('-total'))

        mantt_equipo = (BoletaTrabajo.objects.values('dispositivo__posicion_logica')
                    .annotate(total=Count('id'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    .order_by('-total'))

        paro_equipo = (BoletaTrabajo.objects.values('dispositivo__posicion_logica')
                    .annotate(total=Avg('tiempo_paro'))
                    .filter(creado__month=today.month, creado__year=today.year, paro_operacion=True)
                    .order_by('-total'))

        manttos_user = []
        manttos_estado = []
        avg_paro = []

        for e in mantt_user:
             manttos_user.append((Statistics(pos=e['responsable__username'], total=e['total'])))
        for e in mantt_equipo:
             manttos_estado.append((Statistics(pos=e['dispositivo__posicion_logica'], total=e['total'])))
        for e in paro_equipo:
             avg_paro.append((Statistics(pos=e['dispositivo__posicion_logica'], total=e['total'])))

        serial_mantto_user = StatisticSerializer(manttos_user, many=True)
        serial_mantto_estado = StatisticSerializer(manttos_estado, many=True)
        serial_avg_paro = StatisticSerializer(avg_paro, many=True)
        return JsonResponse({'success': True, 'asignaciones':serial_mantto_user.data,
                             'trabajo_equipos':serial_mantto_estado.data, 'inactividad_avg': serial_avg_paro.data
                             })

class YearlyStatisticJson(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()
        pass
