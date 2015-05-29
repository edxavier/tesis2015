from datetime import timedelta
from django.http import HttpResponse, JsonResponse
from django.shortcuts import get_object_or_404
from django.views.decorators.csrf import csrf_exempt
from django.views.generic import View
from rest_framework import status
from .models import *
from .forms import *
from .serializers import *
from django.shortcuts import render_to_response
from django.template import RequestContext
from apps.inicio.utils import broadcast_event


# Create your views here.

class HostsView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(HostsView, self).dispatch(*args, **kwargs)

    def get(self, request, *args, **kwargs):
        return render_to_response('gestion/hosts.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        try:
            obj, created = Host.objects.get_or_create(direccion=request.POST['direccion'])
            serializer = HostSerializer(obj, data=request.POST, partial=True)
            if serializer.is_valid():
                serializer.save()
                if request.POST['heartbeat'] == "True":
                    broadcast_event(serializer.data, "/heart_beat/")
                else:
                    broadcast_event(serializer.data, "/host_update/")
                return HttpResponse("success")
            else:
                return HttpResponse("fail")
        except Exception, e:
            print(e.message)
            return HttpResponse("fail")


class HostsDetailView(View):

    def get(self, request,id_disp, *args, **kwargs):
        host = Host.objects.get(id=id_disp)
        dias_120 = (120*24*3600)
        dias_90 = (90*24*3600)
        dias_60 = (60*24*3600)
        return render_to_response('gestion/host_details.html',
            locals(), context_instance=RequestContext(request))



class BootEventView(View):

    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(BootEventView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        res = Host.objects.filter(direccion=request.POST['direccion'])
        if len(res) > 0:
            host = res[0]
        else:
            host = Host.objects.create(direccion=request.POST['direccion'])

        form = BootEventForm(request.POST)
        if form.is_valid():
            event = form.save(commit=False)
            event.host = host
            event.save()
            serial = BootEventSerializer(instance=event)
            broadcast_event(serial.data, "/boot_event/")
            return HttpResponse("success")
        else:
            return HttpResponse("fail")


class InterfaceEventView(View):

    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(InterfaceEventView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        res = Host.objects.filter(direccion=request.POST['direccion'])
        if len(res) > 0:
            host = res[0]
        else:
            host = Host.objects.create(direccion=request.POST['direccion'])

        form = InterfaceEventForm(request.POST)
        if form.is_valid():
            event = form.save(commit=False)
            event.host = host
            event.save()
            serial = InterfaceEventSerializer(instance=event)
            broadcast_event(serial.data, "/interface_event/")
            return HttpResponse("success")
        else:
            return HttpResponse("fail")


class GeneralEventView(View):

    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(GeneralEventView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        res = Host.objects.filter(direccion=request.POST['direccion'])
        if len(res) > 0:
            host = res[0]
        else:
            host = Host.objects.create(direccion=request.POST['direccion'])

        form = GeneralEventForm(request.POST)
        if form.is_valid():
            event = form.save(commit=False)
            if request.POST['warning'] == '1':
               event.warning = True
            else:
               event.warning = False
            event.host = host
            event.save()
            if event.tabla == "process table":
                if host.alarma_procesos != event.warning:
                    host.alarma_procesos = event.warning
                    host.save()
                    serialHost = HostSerializer(instance=host,  partial=True)
                    broadcast_event(serialHost.data, "/host_update/")
            elif event.tabla == "laTable":
                if host.alarma_procesador != event.warning:
                    host.alarma_procesador = event.warning
                    host.save()
                    serialHost = HostSerializer(instance=host,  partial=True)
                    broadcast_event(serialHost.data, "/host_update/")
            elif event.tabla == "dskTable":
                if host.alarma_discos != event.warning:
                    host.alarma_discos = event.warning
                    host.save()
                    serialHost = HostSerializer(instance=host,  partial=True)
                    broadcast_event(serialHost.data, "/host_update/")

            serial = GeneralEventSerializer(instance=event)
            broadcast_event(serial.data, "/general_event/")
            return HttpResponse("success")
        else:
            return HttpResponse("fail")


