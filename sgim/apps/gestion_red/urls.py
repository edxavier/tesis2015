__author__ = 'edx'

from django.conf.urls import patterns, url
from .views import BootEventView


urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),

                        url(r'^boot_event/agregar/$', BootEventView.as_view(),),
                       )
