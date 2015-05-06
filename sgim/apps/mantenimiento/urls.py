__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import Tareas, NuevaTarea, Rutinas, Planes, NuevaRutina, NuevoPlan, Boletas, NuevaBoleta
from reports import *

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),

                        url(r'^tareas/agregar/$', login_required(NuevaTarea.as_view()), name='tarea_add'),
                        url(r'^rutinas/agregar/$', login_required(NuevaRutina.as_view()), name='rutina_add'),
                        url(r'^planes/agregar/$', login_required(NuevoPlan.as_view()), name='plan_add'),
                        url(r'^boletas/agregar/$', login_required(NuevaBoleta.as_view()), name='boleta_add'),

                        url(r'^tareas/listar/$', login_required(Tareas.as_view()), name='tareas_list'),
                        url(r'^rutinas/listar/$', login_required(Rutinas.as_view()), name='rutinas_list'),
                        url(r'^planes/listar/$', login_required(Planes.as_view()), name='planes_list'),
                        url(r'^boletas/listar/$', login_required(Boletas.as_view()), name='boletas_list'),
                        url(r'^boletas/reportes/detalle/(\d+)/$', login_required(Mantto_Detalle.as_view()),name='report_mantto_detalle'),

                       )
