from datetime import timedelta
from django.http import JsonResponse
from django.shortcuts import  render_to_response, get_object_or_404
from django.views.generic import View
from django.template.context import RequestContext
from .forms import TareaForm, RutinaForm, ProgramacionForm, BoletaForm
from apps.catalogo.models import TipoDispositivo, EstadoMantenimiento, Personal
from .models import Tarea, BoletaTrabajo
from apps.inventario.models import Dispositivo

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

class Boletas(View):
    def get(self, request, *args, **kwargs):
        boletas = BoletaTrabajo.objects.all()
        return render_to_response('mantto/boletas.html',
            locals(), context_instance=RequestContext(request))

class NuevaTarea(View):
    def get(self, request, *args, **kwargs):
        form = TareaForm()
        return render_to_response('mantto/nueva_tarea.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = TareaForm(request.POST)
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
        form = RutinaForm(request.POST)
        if form.is_valid():
            rutina = form.save(commit=False)
            rutina.creador = request.user
            rutina.duracion_estimada = 0
            rutina.save()
            items = request.POST.getlist('tareas[]')
            for it in items:
                td = get_object_or_404(Tarea, pk=it)
                rutina.tareas.add(td)
            rutina.save()
            tareas = Tarea.objects.filter(rutina__pk=rutina.pk)
            Ndisp = Dispositivo.objects.filter(sistema__pk=rutina.sistema.pk).count()
            minutos = 0
            for t in tareas:
                minutos += t.minutos
            rutina.duracion_estimada = (minutos / 60) * Ndisp
            rutina.save()
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
            #tarea.save()
        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})


class NuevoPlan(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('mantto/nuevo_plan.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = ProgramacionForm(request.POST)
        if form.is_valid():
            plan = form.save(commit=False)
            plan.creador = request.user
            plan.estado =  EstadoMantenimiento.objects.get(pk=1)
            plan.fecha_fin_prevista = plan.fecha_inicio_prevista + timedelta\
                    (hours=plan.rutina.duracion_estimada)
            plan.save()
            items = request.POST.getlist('personal[]')
            for it in items:
                pers = get_object_or_404(Personal, pk=it)
                plan.personal.add(pers)
            plan.save()
            return JsonResponse({'success': form.is_valid(), 'errores': [(k, v[0]) for k, v in form.errors.items()]})
            #tarea.save()
        else:
            return JsonResponse({'success': form.is_valid(), 'errores': [(k, v[0]) for k, v in form.errors.items()]})


class NuevaBoleta(View):
    def get(self, request, *args, **kwargs):
        form = BoletaForm()
        return render_to_response('mantto/nueva_boleta.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = BoletaForm(request.POST)
        if form.is_valid():
            boleta = form.save(commit=False)
            boleta.creador = request.user
            print(boleta.paro_operacion)
            boleta.save()
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})

        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
