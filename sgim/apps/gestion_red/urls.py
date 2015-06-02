__author__ = 'edx'

from django.conf.urls import patterns, url
from .views import *


urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),
                        url(r'^hosts/listar/$', HostsView.as_view(), name='hosts_list'),
                        url(r'^hosts/detalles/(\d+)/$', HostsDetailView.as_view(), name='hosts_detail'),
                        url(r'^boot_event/listar/$', BootEventView.as_view(),),
                        url(r'^interface_event/listar/$', InterfaceEventView.as_view(),),
                        url(r'^general_event/listar/$', GeneralEventView.as_view(),),

                        url(r'^boot_event/agregar/$', BootEventView.as_view(),),
                        url(r'^interface_event/agregar/$', InterfaceEventView.as_view(),),
                        url(r'^general_event/agregar/$', GeneralEventView.as_view(),),
                        url(r'^storages/$', StoragesView.as_view(),),

                       url(r'^devices/$', DeviceView.as_view(),),
                       url(r'^load_avg/$', LoadAvgView.as_view(),),
                       url(r'^memory/$', MemoryView.as_view(),),
                       url(r'^disk/$', DiskView.as_view(),),
                       url(r'^process/$', ProcessView.as_view(),),
                       )
