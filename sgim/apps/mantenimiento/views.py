from django.http import JsonResponse
from django.shortcuts import render
from django.shortcuts import render, render_to_response, get_object_or_404
from django.views.generic import View
from django.template.context import RequestContext
from .forms import TareaForm

# Create your views here.

# Create your views here.
class Tareas(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('mantto/nueva_tarea.html',
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
            #tarea.save()
            return JsonResponse({'success': form.is_valid(), 'errores': []})
        else:
            items = request.POST.getlist('tipo_dispositivos[]')
            for i in items:
                print(i)
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
