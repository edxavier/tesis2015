__author__ = 'edx'

from django.conf.urls import patterns, url
from .views import Perfil, ModificarPerfil, ChangepasswordForm
from django.contrib.auth.decorators import login_required

urlpatterns = patterns('',
                        #url(r'^login/$',Login.as_view(),name='login'),
                        url(r'login$', 'django.contrib.auth.views.login',
                                        {'template_name':'cuentas/login.html'},name='login'),
                        url(r'^logout/$', 'django.contrib.auth.views.logout_then_login', name='logout'),

                        url(r'^modificar/$',login_required(ModificarPerfil.as_view()),name='modificar_perfil'),
                        url(r'^usuario/(?P<user_name>[-\w]+)/$',login_required(Perfil.as_view()),name='perfil'),
                        url(r'^cambiar-clave/$', login_required(ChangepasswordForm.as_view()), name='actualizar_clave'),
                       )
