__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import NuevoDispositivo, Dispositivos, Servicios, Componentes

urlpatterns = patterns('',
                    url(r'^dispositivos/agregar/$', login_required(NuevoDispositivo.as_view()),name='dispositivo_add'),
                    url(r'^dispositivos/listar/$', login_required(Dispositivos.as_view()),name='dispositivos_list'),
                    url(r'^servicios/listar/$', login_required(Servicios.as_view()),name='servicios_list'),
                    url(r'^componentes/listar/$', login_required(Componentes.as_view()),name='componentes_list'),

                       )
