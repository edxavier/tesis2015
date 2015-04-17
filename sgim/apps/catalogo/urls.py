__author__ = 'edx'

from django.conf.urls import patterns, url
from .views import Listar
from django.contrib.auth.decorators import login_required

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),

                        url(r'^listar/dispositivo$', login_required(Listar.as_view())),

                       )
