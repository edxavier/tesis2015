# Create your views here.
from django.http import HttpResponse, JsonResponse, HttpResponseRedirect
from django.shortcuts import render
from django.shortcuts import render, render_to_response, get_object_or_404
from django.views.generic import View
from django.template.context import RequestContext
from .forms import DispositivoForm, ServicioForm, ComponenteForm



# Create your views here.
class Dispositivos(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/dispositivos.html',
            locals(), context_instance=RequestContext(request))


# Create your views here.
class Servicios(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/servicios.html',
            locals(), context_instance=RequestContext(request))


# Create your views here.
class Componentes(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/componentes.html',
            locals(), context_instance=RequestContext(request))


class NuevoDispositivo(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('inventario/nuevo_dispositivo.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = DispositivoForm(request.POST)
        if form.is_valid():
            disp = form.save(commit=False)
            disp.creador = request.user
            if(not disp.inventario):
                disp.inventario = None
            disp.save()
            return JsonResponse({'success': form.is_valid(), 'errores': []})
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})


class NuevoServicio(View):
    def get(self, request, *args, **kwargs):
        form = ServicioForm()
        return render_to_response('inventario/nuevo_servicio.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = ServicioForm(request.POST)
        if form.is_valid():
            servicio = form.save(commit=False)
            servicio.creador = request.user
            servicio.save()
            success = True
            form = ServicioForm()
            return render_to_response('inventario/nuevo_servicio.html',
            locals(), context_instance=RequestContext(request))
        else:
            return render_to_response('inventario/nuevo_servicio.html',
            locals(), context_instance=RequestContext(request))


class NuevoComponente(View):
    def get(self, request, *args, **kwargs):
        form = ComponenteForm()
        return render_to_response('inventario/nuevo_componente.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
            return JsonResponse({'success': "", 'errores': []})
