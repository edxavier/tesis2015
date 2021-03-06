__author__ = 'Eder Xavier Rojas'

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
from unipath import Path
from django.conf.global_settings import TEMPLATE_CONTEXT_PROCESSORS as TCP
#BASE_DIR = os.path.dirname(os.path.dirname(__file__))
#BASE_DIR = Path(__file__).ancestor(3)
#Obtener la ruta del proyecto y regresar un nivel
RUTA_PROYECTO = Path(__file__).ancestor(2)

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.7/howto/deployment/checklist/
ADMINS = (
    ('Eder Xavier Rojas', 'edxavier05@gmail.com'),
)
# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'ci1v5p2c+v2_ya!k%u_s#d4qu1hvn&lor(5!t7bd&g0@5(_596'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

TEMPLATE_DEBUG = DEBUG

ALLOWED_HOSTS = ['*']


# Application definition

DJANGO_APPS = (
    'suit',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
)

LOCAL_APPS = (
    'apps.cuentas',
    'apps.catalogo',
    'apps.inventario',
    'apps.incidencias',
    'apps.mantenimiento',
    'apps.gestion_red',

)

THIRD_PARTY_APPS = (
'rest_framework',
'django_filters',
'mockups',
'djrill',
)

INSTALLED_APPS = DJANGO_APPS + LOCAL_APPS + THIRD_PARTY_APPS

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'apps.inicio.middlewares.LoginRedirectMiddleware'
)

TEMPLATE_CONTEXT_PROCESSORS = TCP + (
    'django.core.context_processors.request',
    'apps.inicio.context_processors.static_base_urls',
)

TEMPLATE_DIRS = (
    # Put strings here, like "/home/html/django_templates" or
    #"C:/www/django/templates".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    #Carpeta donde buscar los templates
    RUTA_PROYECTO.child('templates'),
)

#indica los directorios donde buscar archivos estaticos (CSS, JS)
STATICFILES_DIRS = (
    RUTA_PROYECTO.child('static'),
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
)

SESSION_ENGINES = 'django.contrib.sessions.backends.cached_db'
#STATICFILES_STORAGE = 'django.contrib.staticfiles.storage.CachedStaticFilesStorage'

ROOT_URLCONF = 'sgim.urls'
WSGI_APPLICATION = 'sgim.wsgi.application'

# more details on how to customize your logging configuration.
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        },
        'file': {
            'level': 'DEBUG',
            'class': 'logging.FileHandler',
            'filename': '/home/django/stecnica.log',
        },
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins', 'file'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}


# Internationalization
# https://docs.djangoproject.com/en/1.7/topics/i18n/

LANGUAGE_CODE = 'es-ni'

TIME_ZONE = 'America/Managua'

USE_I18N = True

USE_L10N = True

USE_TZ = True

AUTH_USER_MODEL = 'cuentas.Usuario'
