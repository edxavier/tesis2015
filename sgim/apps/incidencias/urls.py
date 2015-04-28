__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import Incidencias, NuevaIncidencia

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),

                        url(r'^incidentes/agregar/$', login_required(Incidencias.as_view()), name='incidente_add'),


                        url(r'^incidentes/listar/$', login_required(NuevaIncidencia.as_view()), name='incidentes_list'),
                      
                       )
