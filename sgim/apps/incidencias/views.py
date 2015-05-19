from django.http import JsonResponse
from django.shortcuts import render_to_response, get_object_or_404

# Create your views here.
from django.template import RequestContext
from django.views.generic import View

from .forms import IncidenciaForm, CambioForm, ActividadCambioForm, ActivIncidenciaForm
from apps.inventario.models import Servicio, Dispositivo
from apps.catalogo.models import EstadoIncidente
from .models import Incidencia

class Incidencias(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('incidencias/incidencias.html',
            locals(), context_instance=RequestContext(request))

class CambiosView(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('incidencias/cambios.html',
            locals(), context_instance=RequestContext(request))


class NuevaIncidencia(View):
    def get(self, request, *args, **kwargs):
        form = IncidenciaForm()
        return render_to_response('incidencias/nueva_incidencia.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = IncidenciaForm(request.POST)
        if form.is_valid():
            incidente = form.save(commit=False)
            incidente.creador = request.user
            incidente.activo = True
            incidente.save()
            items = request.POST.getlist('servicios[]')
            if items:
                for it in items:
                    serv = get_object_or_404(Servicio, pk=it)
                    incidente.servicios.add(serv)
                incidente.save()
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})



class NuevaCambioView(View):
    def get(self, request, *args, **kwargs):
        form = CambioForm()
        return render_to_response('incidencias/nuevo_cambio.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = CambioForm(request.POST)
        if form.is_valid():
            cambio = form.save(commit=False)
            cambio.creador = request.user
            cambio.activo = True
            cambio.save()
            items = request.POST.getlist('servicios[]')
            if items:
                for it in items:
                    serv = get_object_or_404(Servicio, pk=it)
                    cambio.servicios.add(serv)
                cambio.save()
            items2 = request.POST.getlist('dispositivos[]')
            if items2:
                for it in items2:
                    disp = get_object_or_404(Dispositivo, pk=it)
                    cambio.dispositivos.add(disp)
                cambio.save()
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})



class NuevaActividadCambioView(View):
    def get(self, request, *args, **kwargs):
        form = ActividadCambioForm()
        return render_to_response('incidencias/nuevo_actividad_cambio.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = ActividadCambioForm(request.POST)
        if form.is_valid():
            actividad = form.save(commit=False)
            actividad.creador = request.user
            actividad.activo = True
            actividad.save()
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})




class NuevaActividadIncidenteView(View):
    def get(self, request, *args, **kwargs):
        form = ActivIncidenciaForm()
        return render_to_response('incidencias/nuevo_actividad_incidencia.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = ActivIncidenciaForm(request.POST)
        if form.is_valid():
            actividad = form.save(commit=False)
            actividad.creador = request.user
            actividad.activo = True
            actividad.save()
            if request.POST['cerrar'] == "true":
                inc = get_object_or_404(Incidencia, id=actividad.incidencia.id)
                inc.estado = get_object_or_404(EstadoIncidente, id=1)
                inc.save()
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
