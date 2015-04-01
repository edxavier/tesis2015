__author__ = 'edx'

from django.conf.urls import patterns, url
from .views import Datos
from django.contrib.auth.decorators import login_required

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),
                        url(r'login$', 'django.contrib.auth.views.login', {'template_name':'cuentas/login.html'},name='login'),
                        url(r'^salir/$', 'django.contrib.auth.views.logout_then_login', name='logout'),

                        url(r'^datos/$',login_required(Datos.as_view()),name='dat'),
                       )

