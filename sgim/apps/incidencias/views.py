from django.shortcuts import render_to_response

# Create your views here.
from django.template import RequestContext
from django.views.generic import View

from .forms import IncidenciaForm


class Incidencias(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('incidencias/incidencias.html',
            locals(), context_instance=RequestContext(request))


class NuevaIncidencia(View):
    def get(self, request, *args, **kwargs):
        form = IncidenciaForm()
        return render_to_response('incidencias/nueva_incidencia.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        pass
        #return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})


