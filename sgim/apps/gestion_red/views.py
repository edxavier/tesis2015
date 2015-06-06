from datetime import timedelta
from django.db.models import Count
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
from apps.inicio.utils import html_to_pdf


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
        storages = Storage.objects.filter(host=host)
        #DiskHistory.objects.values('path').annotate(total=Count('systems')).filter(systems__gt=inc).order_by('-total')
        res = DiskHistory.objects.values('path').distinct('path').filter(host=host)
        disks = []
        for r in res:
            disk = DiskHistory.objects.filter(host=host, path=r['path']).earliest('-created')
            disks.append(disk)
        return render_to_response('gestion/host_details.html',
            locals(), context_instance=RequestContext(request))


class HostsReportView(View):

    def get(self, request,id_disp, *args, **kwargs):
        host = Host.objects.get(id=id_disp)
        storages = Storage.objects.filter(host=host)
        #DiskHistory.objects.values('path').annotate(total=Count('systems')).filter(systems__gt=inc).order_by('-total')
        res = DiskHistory.objects.values('path').distinct('path').filter(host=host)
        disks = []
        for r in res:
            disk = DiskHistory.objects.filter(host=host, path=r['path']).earliest('-created')
            disks.append(disk)
        devices = Device.objects.values('type').annotate(total=Count('type')).filter(host=host)
        load_avg = LoadAvgHistory.objects.filter(host=host).earliest('-created')
        ram = MemoryHistory.objects.filter(host=host).earliest('-created')

        return html_to_pdf("gestion/host_report.html", locals())

class HostsListReportView(View):

    def get(self, request, *args, **kwargs):
        hosts = Host.objects.all().order_by('direccion')
        return html_to_pdf("gestion/hosts_listado.html", locals())


class DiskHistView(View):

    def get(self, request,id_disp, *args, **kwargs):
        host = Host.objects.get(id=id_disp)
        #DiskHistory.objects.values('path').annotate(total=Count('systems')).filter(systems__gt=inc).order_by('-total')
        #Obtener el listado de discos que tiene el host
        res = DiskHistory.objects.values('path').distinct('path').filter(host=host)
        disks = []
        for r in res:
            disk_hist = DiskHistory.objects.filter(host=host, path=r['path']).order_by('-created')
            det = []
            for d in disk_hist:
                det.append({'path': d.path, 'percent_used': d.percent_used, 'fecha': d.get_formated_date(), 'size': d.size})
            disks.append(det)
        return JsonResponse({'success': True, 'result': disks})
        #return HttpResponse("fgdgdfgdf")




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
            #event.save()
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


class StoragesView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(StoragesView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        try:
            host, created = Host.objects.get_or_create(direccion=request.POST['direccion'])
            obj, created = Storage.objects.get_or_create(host=host, index=request.POST['index'])
            obj.description = request.POST['description']
            obj.type = request.POST['type']
            obj.size = request.POST['size']
            obj.used = request.POST['used']
            obj.allocation_failures = request.POST['allocation_failures']
            obj.percent_used = (int(obj.used) * 100) / int(obj.size)
            obj.save()
            return HttpResponse("success")
        except Exception, e:
            print(e.message)
            return HttpResponse("fail")



class DeviceView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(DeviceView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        try:
            host, created = Host.objects.get_or_create(direccion=request.POST['direccion'])
            obj, created = Device.objects.get_or_create(host=host, index=request.POST['index'])
            obj.description = request.POST['description']
            obj.type = request.POST['type']
            obj.status = request.POST['status']
            obj.errors = request.POST['errors']
            obj.save()
            return HttpResponse("success")
        except Exception, e:
            print(e.message)
            return HttpResponse("fail")

class LoadAvgView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(LoadAvgView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        try:
            host, created = Host.objects.get_or_create(direccion=request.POST['direccion'])
            obj = LoadAvgHistory()
            obj.host = host
            obj.load1, obj.load5, obj.load15 = request.POST['load1'], request.POST['load5'], request.POST['load15']
            obj.threshold1, obj.threshold5, obj.threshold15 = request.POST['threshold1'], request.POST['threshold5'], request.POST['threshold15']
            if request.POST['flag1'] == "1":
                obj.flag1 = True
            if request.POST['flag5'] == "1":
                obj.flag1 = True
            if request.POST['flag15'] == "1":
                obj.flag1 = True
            obj.msg1, obj.msg5, obj.msg15 = request.POST['msg1'], request.POST['msg5'], request.POST['msg15']
            if obj.flag1 or obj.flag5 or obj.flag15:
                host.alarma_procesador = True
            else:
                host.alarma_procesador = False
            host.save()
            obj.save()
            serial = LoadSerializer(instance=obj)
            broadcast_event(serial.data, "/load_avg/")
            return HttpResponse("success")
        except Exception, e:
            print(e.message)
            return HttpResponse("fail")


class MemoryView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(MemoryView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        try:
            host, created = Host.objects.get_or_create(direccion=request.POST['direccion'])
            obj = MemoryHistory()
            obj.host = host
            obj.total_swap, obj.total_ram = request.POST['total_swap'], request.POST['total_ram']
            obj.free_swap, obj.free_ram = request.POST['free_swap'], request.POST['free_ram']
            obj.save()
            serial = MemorySerializer(instance=obj)
            broadcast_event(serial.data, "/mem_usage/")
            if request.POST['mem_alarm'] == "True":
                host.alarma_memoria = True
            else:
                host.alarma_memoria = False
            host.save()

            return HttpResponse("success")
        except Exception, e:
            print(e.message)
            return HttpResponse("fail")



class DiskView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(DiskView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        try:
            host, created = Host.objects.get_or_create(direccion=request.POST['direccion'])
            obj = DiskHistory()
            obj.host = host
            if request.POST['flag'] == '1':
                obj.flag = True
            obj.path, obj.device, obj.min_free = request.POST['path'], request.POST['device'], request.POST['min_free']
            obj.size, obj.used = request.POST['size'], request.POST['used']
            obj.percent_used, obj.msg = request.POST['percent_used'], request.POST['msg']
            obj.save()
            return HttpResponse("success")
        except Exception, e:
            print(e.message)
            return HttpResponse("fail")

class ProcessView(View):
    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(ProcessView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        try:
            host, created = Host.objects.get_or_create(direccion=request.POST['direccion'])
            obj, created = Process.objects.get_or_create(host=host, index=request.POST['index'],
                                                         name=request.POST['name'])
            obj.min = request.POST['min']
            obj.max = request.POST['max']
            obj.count = request.POST['count']
            if request.POST['flag'] == '1':
                obj.flag = True
            else:
                obj.flag = False

            count = Process.objects.filter(flag=True, host=host).count()
            if count > 0:
                host.alarma_procesos = True
            else:
                host.alarma_procesos = False
            host.save()
            obj.msg = request.POST['msg']
            obj.save()
            return HttpResponse("success")
        except Exception, e:
            print(e.message)
            return HttpResponse("fail")