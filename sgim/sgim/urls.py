from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.contrib.auth.decorators import login_required
from .settings import DEBUG, MEDIA_ROOT
from apps.inicio.views import Home
from rest_framework import routers
from apps.catalogo.views import (TipoDispoViewSet, EdificioViewSet, OficinaViewSet,
                                 EstadoOpeViewSet, SistemaViewSet, TipoComponenteViewSet,
)

router = routers.DefaultRouter()
router.register(r'catalogo/tipo_disp', TipoDispoViewSet, base_name="TipoDispoViewSet")
router.register(r'catalogo/edificio', EdificioViewSet)
router.register(r'catalogo/oficina', OficinaViewSet)
router.register(r'catalogo/estado_ope', EstadoOpeViewSet)
router.register(r'catalogo/sistema', SistemaViewSet)
router.register(r'catalogo/tipo_componente', TipoComponenteViewSet)

urlpatterns = patterns('',
                       url(r'^api/', include(router.urls)),
                       # Examples:
                       # url(r'^grappelli/', include('grappelli.urls')),
                       url(r'^$', login_required(Home.as_view()), name='home'),
                       url(r'^login/$', 'django.contrib.auth.views.login',
                           {'template_name': 'cuentas/login2.html'}, name='login'),
                       url(r'^logout/$', 'django.contrib.auth.views.logout_then_login', name='logout'),
                       # url(r'^blog/', include('blog.urls')),
                       url(r'^cuentas/', include('apps.cuentas.urls')),
                       url(r'^catalogo/', include('apps.catalogo.urls')),
                       url(r'^mantto/', include('apps.mantenimiento.urls')),
                       url(r'^inventario/', include('apps.inventario.urls')),


                       url(r'^admin/', include(admin.site.urls)),
                       )

# Si esta en modo debug cargar los estaticos y media
if DEBUG:
    urlpatterns += patterns("",
                            url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
                                {'document_root': MEDIA_ROOT}),
                            )
