__author__ = 'edx'

from django.conf.urls import patterns, url
from .views import *
from django.contrib.auth.decorators import login_required


urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),
                        url(r'^hosts/listar/$', login_required(HostsView.as_view()), name='hosts_list'),
                        url(r'^hosts/detalles/(\d+)/$', login_required(HostsDetailView.as_view()), name='hosts_detail'),
                       url(r'^hosts/report/(\d+)/$', login_required(HostsReportView.as_view()), name=''),
                       url(r'^hosts/report/listar/$', login_required(HostsListReportView.as_view()), name=''),

                        url(r'^boot_event/listar/$', BootEventView.as_view(),),
                        url(r'^interface_event/listar/$', InterfaceEventView.as_view(),),
                        url(r'^general_event/listar/$', GeneralEventView.as_view(),),

                        url(r'^boot_event/agregar/$', BootEventView.as_view(),),
                        url(r'^boot_event/listar/$', BootEventView.as_view(), name='boot_list'),
                        url(r'^interface_event/agregar/$', InterfaceEventView.as_view(),),
                        url(r'^general_event/agregar/$', GeneralEventView.as_view(),),
                        url(r'^general_event/listar/$', GeneralEventView.as_view(), name='general_list'),
                        url(r'^storages/$', StoragesView.as_view(),),

                       url(r'^devices/$', DeviceView.as_view(),),
                       url(r'^load_avg/$', LoadAvgView.as_view(),),
                       url(r'^memory/$', MemoryView.as_view(),),
                       url(r'^disk/$', DiskView.as_view(),),
                       url(r'^process/$', ProcessView.as_view(),),
                        url(r'^disk_hist/(\d+)/$', DiskHistView.as_view(),),
                       )
