from apps.incidencias.reports import Incidentes_Info
from apps.mantenimiento.reports import Manttos_Info

__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import NuevoDispositivo, Dispositivos, Servicios, Componentes, NuevoComponente, NuevoServicio, DispositivoDetalle
from .reports import *
urlpatterns = patterns('',

                    url(r'^dispositivos/agregar/$', login_required(NuevoDispositivo.as_view()), name='dispositivo_add'),
                    url(r'^servicios/agregar/$', login_required(NuevoServicio.as_view()), name='servicio_add'),
                    url(r'^componentes/agregar/$', login_required(NuevoComponente.as_view()), name='componente_add'),

                    url(r'^dispositivos/listar/$', login_required(Dispositivos.as_view()), name='dispositivos_list'),
                    url(r'^servicios/listar/$', login_required(Servicios.as_view()), name='servicios_list'),
                    url(r'^componentes/listar/$', login_required(Componentes.as_view()), name='componentes_list'),

                    url(r'^dispositivos/detalle/(\d+)/$', login_required(DispositivoDetalle.as_view()), name='dispositivos_detail'),

                    url(r'^dispositivos/reporte/detalle_disp/(\d+)/$', login_required(Todo_Info.as_view()),name='reporte_todo'),
                    url(r'^dispositivos/reporte/mantto_disp/(\d+)/$', login_required(Manttos_Info.as_view()),name='reporte_mantto'),
                    url(r'^dispositivos/reporte/inc_disp/(\d+)/$', login_required(Incidentes_Info.as_view()),name='reporte_inc'),
                    url(r'^dispositivos/reporte/listado/$', login_required(Listado_disp.as_view()),name='reporte_listado_disp'),

                       )
