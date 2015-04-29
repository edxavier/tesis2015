from django.http import JsonResponse
from django.shortcuts import render_to_response, get_object_or_404

# Create your views here.
from django.template import RequestContext
from django.views.generic import View

from .forms import IncidenciaForm, CambioForm
from apps.inventario.models import Servicio


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
        pass