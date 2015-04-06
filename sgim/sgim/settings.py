__author__ = 'Eder Xavier Rojas'

from .base import *

# Database
# https://docs.djangoproject.com/en/1.7/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'sgimdb',
        'USER': 'sgimuser',
        'PASSWORD': 'stecnica',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}



# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.7/howto/static-files/

STATIC_URL = '/static/'
MEDIA_URL = '/media/'
MEDIA_ROOT = RUTA_PROYECTO.child('media')

from django.core.urlresolvers import reverse_lazy
LOGIN_URL = "/login"
LOGIN_REDIRECT_URL = "/login"
LOGOUT_URL = "/logout"