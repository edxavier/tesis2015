from django.db.models import Count

__author__ = 'edx'
from datetime import datetime
from django.http import JsonResponse
from django.shortcuts import render_to_response, get_object_or_404

# Create your views here.
from django.template import RequestContext
from django.views.generic import View
from apps.inventario.models import Servicio, Dispositivo
from apps.catalogo.models import EstadoIncidente
from .models import Incidencia, Cambio
from .statistic_serializer import *


class MonthlyStatistic(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()
        return render_to_response('incidencias/estadistica_mensual.html',
            locals(), context_instance=RequestContext(request))

class YearlyStatistic(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()
        return render_to_response('incidencias/estadistica_anual.html',
            locals(), context_instance=RequestContext(request))


class MonthlyStatisticJson(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()

        inc_disp = (Incidencia.objects.values('dispositivo__posicion_logica')
                    .annotate(total=Count('id'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    .order_by('-total'))

        inc_tipo = (Incidencia.objects.values('tipo__nombre').annotate(total=Count('id'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    .order_by('-total'))

        inc_person = (Incidencia.objects.values('reporta__nombre_completo').annotate(total=Count('id'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    .order_by('-total'))

        inc_user = (Incidencia.objects.values('creador__username').annotate(total=Count('id'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    .order_by('-total'))

        user_resol = (Incidencia.objects.values('creador__username',)
                    .annotate(creadas=Count('creador'), cerradas=Count('cerrado_por'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    )

        serv_afec = (Incidencia.objects.values('servicios__nombre',)
                    .annotate(total=Count('servicios__nombre'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    )

        devices = []
        servicios_afec = []
        types = []
        persons = []
        users = []
        resolution = []

        for d in inc_disp:
            devices.append((Statistics(pos=d['dispositivo__posicion_logica'], total=d['total'])))
        for d in inc_tipo:
            types.append((Statistics(pos=d['tipo__nombre'], total=d['total'])))
        for d in inc_person:
            persons.append((Statistics(pos=d['reporta__nombre_completo'], total=d['total'])))
        for d in inc_user:
            users.append((Statistics(pos=d['creador__username'], total=d['total'])))
        for d in serv_afec:
            if d['servicios__nombre']:
                servicios_afec.append((Statistics(pos=d['servicios__nombre'], total=d['total'])))
        for d in user_resol:
            resolution.append((Statistics(pos=d['creador__username'], total=d['creadas'], pos2=d['cerradas'])))

        serial_devices = StatisticSerializer(devices, many=True)
        serial_tipos = StatisticSerializer(types, many=True)
        serial_personas = StatisticSerializer(persons, many=True)
        serial_users = StatisticSerializer(users, many=True)
        serial_resolution = StatisticSerializer(resolution, many=True)
        serial_serv = StatisticSerializer(servicios_afec, many=True)

        return JsonResponse({'success': True, 'devices': serial_devices.data,
                             'tipos': serial_tipos.data, 'personas': serial_personas.data,
                             'usuarios': serial_users.data, 'resolucion': serial_resolution.data,
                             'servicios': serial_serv.data
                             })

class YearlyStatisticJson(View):
    def get(self, request, *args, **kwargs):
        today = datetime.now()
        inc_disp = (Incidencia.objects.values('dispositivo__posicion_logica')
                    .annotate(total=Count('id'))
                    .filter( creado__year=today.year)
                    .order_by('-total'))

        inc_tipo = (Incidencia.objects.values('tipo__nombre').annotate(total=Count('id'))
                    .filter(creado__year=today.year)
                    .order_by('-total'))

        inc_person = (Incidencia.objects.values('reporta__nombre_completo').annotate(total=Count('id'))
                    .filter(creado__year=today.year)
                    .order_by('-total'))

        inc_user = (Incidencia.objects.values('creador__username').annotate(total=Count('id'))
                    .filter( creado__year=today.year)
                    .order_by('-total'))

        user_resol = (Incidencia.objects.values('creador__username',)
                    .annotate(creadas=Count('creador'), cerradas=Count('cerrado_por'))
                    .filter(creado__year=today.year)
                    )

        serv_afec = (Incidencia.objects.values('servicios__nombre',)
                    .annotate(total=Count('servicios__nombre'))
                    .filter(creado__month=today.month, creado__year=today.year)
                    )
        servicios_afec = []
        devices = []
        types = []
        persons = []
        users = []
        resolution = []

        for d in serv_afec:
            if d['servicios__nombre']:
                servicios_afec.append((Statistics(pos=d['servicios__nombre'], total=d['total'])))
        for d in inc_disp:
            devices.append((Statistics(pos=d['dispositivo__posicion_logica'], total=d['total'])))
        for d in inc_tipo:
            types.append((Statistics(pos=d['tipo__nombre'], total=d['total'])))
        for d in inc_person:
            persons.append((Statistics(pos=d['reporta__nombre_completo'], total=d['total'])))
        for d in inc_user:
            users.append((Statistics(pos=d['creador__username'], total=d['total'])))
        for d in user_resol:
            resolution.append((Statistics(pos=d['creador__username'], total=d['creadas'], pos2=d['cerradas'])))

        serial_serv = StatisticSerializer(servicios_afec, many=True)
        serial_devices = StatisticSerializer(devices, many=True)
        serial_tipos = StatisticSerializer(types, many=True)
        serial_personas = StatisticSerializer(persons, many=True)
        serial_users = StatisticSerializer(users, many=True)
        serial_resolution = StatisticSerializer(resolution, many=True)

        return JsonResponse({'success': True, 'devices': serial_devices.data,
                             'tipos': serial_tipos.data, 'personas': serial_personas.data,
                             'usuarios': serial_users.data, 'resolucion': serial_resolution.data,
                             'servicios': serial_serv.data
                             })
