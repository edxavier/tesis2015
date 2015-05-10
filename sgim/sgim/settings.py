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
BOWER_URL = STATIC_URL+'bower/bower_components/'
MEDIA_ROOT = RUTA_PROYECTO.child('media')

LOGIN_URL = "/login"
LOGIN_REDIRECT_URL = "/"
LOGOUT_URL = "/logout"


REST_FRAMEWORK = {
    'DEFAULT_FILTER_BACKENDS': ('rest_framework.filters.DjangoFilterBackend',),
    'DEFAULT_PERMISSION_CLASSES': (
        'rest_framework.permissions.IsAuthenticated',
    )
}

