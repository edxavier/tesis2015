__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import Tareas, NuevaTarea, Rutinas, Planes, NuevaRutina

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),

                        url(r'^tareas/agregar/$', login_required(NuevaTarea.as_view()), name='tarea_add'),
                        url(r'^rutinas/agregar/$', login_required(NuevaRutina.as_view()), name='rutina_add'),
                        url(r'^planes/agregar/$', login_required(NuevaTarea.as_view()), name='plan_add'),

                        url(r'^tareas/listar/$', login_required(Tareas.as_view()), name='tareas_list'),
                        url(r'^rutinas/listar/$', login_required(Rutinas.as_view()), name='rutinas_list'),
                        url(r'^planes/listar/$', login_required(Planes.as_view()), name='planes_list'),
                      
                       )
