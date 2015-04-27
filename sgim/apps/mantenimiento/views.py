from django.http import JsonResponse
from django.shortcuts import render
from django.shortcuts import render, render_to_response, get_object_or_404
from django.views.generic import View
from django.template.context import RequestContext
from .forms import TareaForm, RutinaForm
from apps.catalogo.models import TipoDispositivo
from .models import Tarea


# Create your views here.

# Create your views here.

class Tareas(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('mantto/tareas.html',
            locals(), context_instance=RequestContext(request))


class Rutinas(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('mantto/rutinas.html',
            locals(), context_instance=RequestContext(request))


class Planes(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('mantto/planes.html',
            locals(), context_instance=RequestContext(request))


class NuevaTarea(View):
    def get(self, request, *args, **kwargs):
        form = TareaForm()
        return render_to_response('mantto/nueva_tarea.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = form = TareaForm(request.POST)
        if form.is_valid():
            tarea = form.save(commit=False)
            tarea.creador = request.user
            tarea.save()
            items = request.POST.getlist('tipo_dispositivos[]')
            if items:
                for it in items:
                    td = get_object_or_404(TipoDispositivo, pk=it)
                    tarea.tipo_dispositivos.add(td)
                tarea.save()
                return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
            else:
                return JsonResponse({'success': False, 'errores': [("Tipos de Dispositivo", "Este campo es requerido")]})

            #tarea.save()
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})


class NuevaRutina(View):
    def get(self, request, *args, **kwargs):
        form = RutinaForm()
        return render_to_response('mantto/nueva_rutina.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = form = RutinaForm(request.POST)
        if form.is_valid():
            rutina = form.save(commit=False)
            rutina.creador = request.user
            rutina.duracion_estimada = 0
            rutina.save()
            items = request.POST.getlist('tareas[]')
            if items:
                for it in items:
                    td = get_object_or_404(Tarea, pk=it)
                    rutina.tareas.add(td)
                rutina.save()
                return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
            else:
                return JsonResponse({'success': False, 'errores': [("Tipos de Dispositivo", "Este campo es requerido")]})

            #tarea.save()
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
