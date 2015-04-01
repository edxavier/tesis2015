from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.contrib.auth.decorators import login_required
from .settings import DEBUG, MEDIA_ROOT
from apps.inicio.views import Home

urlpatterns = patterns('',
                       # Examples:
                       url(r'^$', login_required(Home.as_view()), name='home'),
                       # url(r'^blog/', include('blog.urls')),
                       url(r'^cuentas/',include('apps.cuentas.urls',namespace='cuentas_app')),

    
                       url(r'^admin/', include(admin.site.urls)),
                       )

#Si esta en modo debug cargar los estaticos y media
if DEBUG:
    urlpatterns += patterns("",
                          url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
    			          { 'document_root' :MEDIA_ROOT  }),
                        )
