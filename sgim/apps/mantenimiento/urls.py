__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import Tareas, NuevaTarea

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),

                        url(r'^tareas/agregar/$',login_required(NuevaTarea.as_view()), name='tarea_add'),
                      
                       )
