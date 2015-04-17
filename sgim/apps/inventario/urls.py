__author__ = 'edx'

from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required
from .views import NuevoDispositivo

urlpatterns = patterns('',
                    url(r'^dispositivo/$', login_required(NuevoDispositivo.as_view()),name='dispositivo_add'),

                       )
