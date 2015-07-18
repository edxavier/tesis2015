from datetime import timedelta, datetime
from django.http import JsonResponse
from django.shortcuts import render_to_response, get_object_or_404
from django.views.generic import View
from django.template.context import RequestContext
from .forms import TareaForm, RutinaForm, ProgramacionForm, BoletaForm
from apps.catalogo.models import TipoDispositivo, EstadoMantenimiento, Personal
from .models import Tarea, BoletaTrabajo
from apps.inventario.models import Dispositivo
from apps.inicio.utils import enviarSMS, enviarEmail
from braces.views import PermissionRequiredMixin

# Create your views here.
from apps.cuentas.models import Usuario


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


class NuevaRutina(PermissionRequiredMixin, View):

    permission_required = "mantenimiento.add_rutina"

    def get(self, request, *args, **kwargs):
        form = RutinaForm()
        return render_to_response('mantto/nueva_rutina.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = RutinaForm(request.POST)
        if form.is_valid():
            rutina = form.save(commit=False)
            rutina.creador = request.user
            #rutina.duracion_estimada = 0
            rutina.activo = True
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


class NuevoPlan(PermissionRequiredMixin, View):

    permission_required = "mantenimiento.add_programacion"

    def get(self, request, *args, **kwargs):
        return render_to_response('mantto/nuevo_plan.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        data = request.POST.copy()
        data['fecha_inicio_prevista'] = datetime.strptime(data['fecha_inicio_prevista'], '%d/%m/%Y %H:%M')
        data['fecha_fin_prevista'] = datetime.strptime(data['fecha_fin_prevista'], '%d/%m/%Y %H:%M')
        form = ProgramacionForm(data)
        if form.is_valid():
            plan = form.save(commit=False)
            plan.creador = request.user
            plan.activo = True
            plan.estado_id = 1
            plan.save()
            items = request.POST.getlist('personal[]')
            pers_lis = []
            for it in items:
                pers = get_object_or_404(Usuario, pk=it)
                plan.personal.add(pers)
                pers_lis.append(pers)
            plan.save()
            if plan.responsable.email:
                toList = [plan.responsable.email]
                msg = "<h2>"+plan.rutina.titulo+"</h2>"
                msg = msg + "<p>Por este medio se le notifica que estara a cargo de la rutina: [" + plan.rutina.titulo
                msg = msg + "], a iniciarce el "+plan.fecha_inicio_prevista.strftime('%d-%m-%Y')+"</p><p>Sala Tecnica</p>"
                msg = msg + "<h4>Contara usted con el apoyo de:</h4><ol>"
                for per in pers_lis:
                    fn = ""
                    if per.get_full_name():
                        fn = per.get_full_name()
                    msg = msg + "<li>"+fn+" ("+per.username+")</li>"
                msg = msg + "</ol>"
                enviarEmail(plan.rutina.titulo, toList, msg, 'mantto')
            return JsonResponse({'success': form.is_valid(), 'errores': [(k, v[0]) for k, v in form.errors.items()]})
        else:
            return JsonResponse({'success': form.is_valid(), 'errores': [(k, v[0]) for k, v in form.errors.items()]})


class NuevaBoleta(PermissionRequiredMixin, View):

    permission_required = 'mantenimiento.add_boletatrabajo'

    def get(self, request, *args, **kwargs):
        form = BoletaForm()
        return render_to_response('mantto/nueva_boleta.html',
            locals(), context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = BoletaForm(request.POST)
        if form.is_valid():
            boleta = form.save(commit=False)
            boleta.creador = request.user
            boleta.activo = True
            disp = get_object_or_404(Dispositivo, id=boleta.dispositivo.id)
            if disp:
                disp.estado = boleta.estado_final
                disp.save()
            boleta.save()
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})

        else:
            return JsonResponse({'success': form.is_valid(),'errores': [(k, v[0]) for k, v in form.errors.items()]})
