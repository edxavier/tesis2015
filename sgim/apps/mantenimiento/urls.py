__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import Tareas, NuevaTarea, Rutinas, Planes, NuevaRutina, NuevoPlan, Boletas, NuevaBoleta
from reports import *
from statistic_view import *

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

                        url(r'^planes/reportes/detalle/(\d+)/$', login_required(Plan_Detalle.as_view()),name='report_plan_detalle'),
                        url(r'^planes/reportes/listado/$', login_required(Planes_Listado.as_view()),name='report_plan_list'),
                        url(r'^rutinas/reportes/detalle/(\d+)/$', login_required(Rutina_Detalle.as_view()),name='report_rutina_detalle'),
                        url(r'^rutinas/reportes/listado/$', login_required(Rutinas_Listado.as_view()), name='report_rutina_list'),
                        url(r'^rutinas/reportes/formato/(\d+)/$', login_required(Rutina_Formato.as_view()), name='report_rutina_format'),

                        url(r'^estadistica/mensual/$', login_required(MonthlyStatistic.as_view()), name='mantto_mensual_stats'),
                        url(r'^estadistica/anual/$', login_required(YearlyStatistic.as_view()), name='mantto_anual_stats'),

                        url(r'^estadistica/mensual/json/$', login_required(MonthlyStatisticJson.as_view()), name=''),
                       url(r'^estadistica/anual/json/$', login_required(YearlyStatisticJson.as_view()), name=''),

                       )
