__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import Incidencias, NuevaIncidencia, CambiosView, NuevaCambioView, NuevaActividadCambioView, NuevaActividadIncidenteView

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),

                        url(r'^incidentes/agregar/$', login_required(NuevaIncidencia.as_view()), name='incidente_add'),
                        url(r'^cambios/agregar/$', login_required(NuevaCambioView.as_view()), name='cambio_add'),


                        url(r'^incidentes/listar/$', login_required(Incidencias.as_view()), name='incidentes_list'),
                        url(r'^cambios/listar/$', login_required(CambiosView.as_view()), name='cambios_list'),

                        url(r'^cambios/seguimiento/$', login_required(NuevaActividadCambioView.as_view()), name='cambios_follow'),
                         url(r'^incidentes/seguimiento/$', login_required(NuevaActividadIncidenteView.as_view()), name='incidentes_follow'),
                       )
