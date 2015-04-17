# Create your views here.
from django.shortcuts import render
from django.shortcuts import render, render_to_response, get_object_or_404
from django.views.generic import View
from django.template.context import RequestContext

# Create your views here.

# Create your views here.
class NuevoDispositivo(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/nuevo_dispositivo.html',
            locals(), context_instance=RequestContext(request))