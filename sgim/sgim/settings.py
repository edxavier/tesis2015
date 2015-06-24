__author__ = 'Eder Xavier Rojas'

from .base import *

# Database
# https://docs.djangoproject.com/en/1.7/ref/settings/#databases

DATABASES = {
    'default': {
        #'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'sgimdb',
        'USER': 'sgimuser',
        'PASSWORD': 'stecnica',
        #'HOST': '192.168.137.200',
        'HOST': '104.236.23.248',
        'PORT': '5432',
    }
}

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.7/howto/static-files/

STATIC_URL = '/static/'
MEDIA_URL = '/media/'
BOWER_URL = STATIC_URL+'bower/bower_components/'
MEDIA_ROOT = RUTA_PROYECTO.child('media')
STATIC_ROOT = RUTA_PROYECTO

LOGIN_URL = "/login"
LOGIN_REDIRECT_URL = "/"
LOGOUT_URL = "/logout"


REST_FRAMEWORK = {
    'DEFAULT_FILTER_BACKENDS': ('rest_framework.filters.DjangoFilterBackend',),
    'DEFAULT_PERMISSION_CLASSES': (
        'rest_framework.permissions.IsAuthenticated',
    ),
}


EMAIL_BACKEND ='djrill.mail.backends.djrill.DjrillBackend'
MANDRILL_API_KEY = 'qk18KxRN5MpaJDB7zwAp_Q'
DEFAULT_FROM_EMAIL = "stecnica@eaai.com.ni"
SERVER_EMAIL = 'stecnica@eaai.com.ni'

# Django Suit configuration example
SUIT_CONFIG = {
    # header
    'ADMIN_NAME': 'Administracion del sistema ',
    'HEADER_DATE_FORMAT': 'l, d F Y',
    'HEADER_TIME_FORMAT': 'h:i a',

    # forms
    'SHOW_REQUIRED_ASTERISK': True,  # Default True
    'CONFIRM_UNSAVED_CHANGES': True, # Default True

    # menu
    # 'SEARCH_URL': '/admin/auth/user/',
    'MENU_ICONS': {
       'sites': 'icon-leaf',
       'auth': 'icon-lock',
       #'bitacora': 'icon-book',
       #'sistemas': 'icon-cog',
     },
    # 'MENU_OPEN_FIRST_CHILD': True, # Default True
    # 'MENU_EXCLUDE': ('auth.group',),
    'MENU': (
    #     'sites',
        {'label': 'Pagina Principal', 'url': '/', 'icon':'icon-hand-left'},
        {'app': 'auth', 'icon':'icon-lock', 'models': ('group',),'label': 'Gestion de Grupos'},
        {'app': 'cuentas', 'label': 'Gestion de Usuarios'},
        {'app': 'gestion_red', 'label': 'Gestion de Red'},
        {'app': 'catalogo', 'label': 'Gestion de Catalogos'},
        {'app': 'inventario', 'label': 'Gestion de Inventario'},
        {'app': 'incidencias', 'label': 'Gestion de Incidencias'},
        {'app': 'mantenimiento', 'label': 'Gestion de Mantenimientos'},
    #     {'label': 'Settings', 'icon':'icon-cog', 'models': ('auth.user', 'auth.group')},
#        {'label': 'Support', 'models':[{'label':'dsdsd','icon':'icon-lock'}]},

    ),

    # misc
    'LIST_PER_PAGE': 10
}