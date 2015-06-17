# Create your views here.
from __future__ import division
from datetime import date, datetime, timedelta
from django.http import HttpResponse, JsonResponse, HttpResponseRedirect
from django.shortcuts import render
from django.shortcuts import render, render_to_response, get_object_or_404
from django.utils.formats import number_format
from django.views.generic import View
from django.template.context import RequestContext
from .forms import DispositivoForm, ServicioForm, ComponenteForm
from .models import *
# Create your views here.
from apps.incidencias.models import Incidencia, ActividadIncidencia
from apps.mantenimiento.models import BoletaTrabajo
from django.db.models import Sum
from braces.views import PermissionRequiredMixin


class Dispositivos(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/dispositivos.html',
            locals(), context_instance=RequestContext(request))


class DispositivoDetalle(View):
    def get(self, request, id_disp, *args, **kwargs):
        dispositivo = get_object_or_404(Dispositivo, pk=id_disp)
        incidencias = Incidencia.objects.filter(dispositivo=dispositivo).order_by('-id')[:50]
        manttos = BoletaTrabajo.objects.filter(dispositivo=dispositivo)[:50]

        nfallos = Incidencia.objects.filter(dispositivo=dispositivo, paro_equipo=True).count()
        nfallos += ActividadIncidencia.objects.filter(incidencia__dispositivo=dispositivo, paro_equipo=True).count()
        nincidentes = Incidencia.objects.filter(dispositivo=dispositivo).count()
        tfallos = Incidencia.objects.filter(dispositivo=dispositivo, paro_equipo=True).aggregate(tf=Sum('duracion_paro'))
        tseguimiento_inc = ActividadIncidencia.objects.filter(incidencia__dispositivo=dispositivo, paro_equipo=True).aggregate(tf=Sum('duracion_paro'))

        num_manttos = BoletaTrabajo.objects.filter(dispositivo=dispositivo, paro_operacion=True).count()
        tmanttos = BoletaTrabajo.objects.filter(dispositivo=dispositivo, paro_operacion=True).aggregate(tm=Sum('tiempo_paro'))
        #Obtener la diferencia de tiempo entre la efcha de registro y la actual
        dif = datetime.now() - dispositivo.creado.replace(tzinfo=None)
        #calcular las horas
        operation_time = (dif.total_seconds()/3600)

        """
        if dif.days > 0:
            operation_time = dif.days*24 #Dias de operacion
        else:
            operation_time = 0.5
        """

        TMEF, TF, Confiabilidad, Disponibilidad, MTTR = 0, 0, 100, 100, 0
        #Tiempo medio entre incidentes
        TMEI = tiempo_segimiento = 0
        if tseguimiento_inc['tf']:
            tiempo_segimiento = float(tseguimiento_inc['tf'] / 60)
        if nincidentes>0:
            TMEI = operation_time / nincidentes
        tiempo_fallos = tiempo_manttos = 0
        if nfallos > 0:
            tiempo_fallos = float(tfallos['tf'] / 60) + tiempo_segimiento
            TMEF = (float(operation_time) - tiempo_fallos) / nfallos
            TF = 1 / TMEF
            Confiabilidad = Confiabilidad - TF
            Confiabilidad = str(Confiabilidad)

        if num_manttos > 0:
            tiempo_manttos = float(tmanttos['tm'] / 60)
            MTTR = tiempo_manttos / num_manttos
        try:
            Disponibilidad = ((operation_time - (tiempo_fallos + tiempo_manttos)) / operation_time) * 100
        except:
            pass

        return render_to_response('inventario/dispositivo_detalle.html',
            locals(), context_instance=RequestContext(request))


# Create your views here.
class Servicios(View):
    def get(self, request, *args, **kwargs):
        servicios = Servicio.objects.all()
        return render_to_response('inventario/servicios.html',
            locals(), context_instance=RequestContext(request))


# Create your views here.
class Componentes(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/componentes.html',
            locals(), context_instance=RequestContext(request))


class NuevoDispositivo(PermissionRequiredMixin, View):

    permission_required = 'inventario.add_dispositivo'

    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/nuevo_dispositivo.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = DispositivoForm(request.POST)
        print(request.POST)
        if form.is_valid():
            disp = form.save(commit=False)
            disp.creador = request.user
            disp.activo = True
            if(not disp.inventario):
                disp.inventario = None
            disp.save()
            return JsonResponse({'success': form.is_valid(), 'errores': []})
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})


class NuevoServicio(PermissionRequiredMixin, View):

    permission_required = 'inventario.add_servicio'

    def get(self, request, *args, **kwargs):
        form = ServicioForm()
        return render_to_response('inventario/nuevo_servicio.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = ServicioForm(request.POST)
        if form.is_valid():
            servicio = form.save(commit=False)
            servicio.creador = request.user
            servicio.activo = True
            servicio.save()
            success = True
            form = ServicioForm()
            return render_to_response('inventario/nuevo_servicio.html',
            locals(), context_instance=RequestContext(request))
        else:
            return render_to_response('inventario/nuevo_servicio.html',
            locals(), context_instance=RequestContext(request))


class NuevoComponente(PermissionRequiredMixin, View):

    permission_required = 'inventario.add_componente'

    def get(self, request, *args, **kwargs):
        form = ComponenteForm()
        return render_to_response('inventario/nuevo_componente.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = ComponenteForm(request.POST)
        if form.is_valid():
            comp = form.save(commit=False)
            comp.creador = request.user
            comp.activo = True
            if(not comp.inventario):
                comp.inventario = None
            comp.save()
            return JsonResponse({'success': form.is_valid(), 'errores': []})
        else:
            return JsonResponse({'success': form.is_valid(), 'errores': [(k, v[0]) for k, v in form.errors.items()]})

