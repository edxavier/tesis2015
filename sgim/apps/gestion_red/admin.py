from django.contrib import admin
from .models import *

admin.site.register(Host)
admin.site.register(BootEvent)
admin.site.register(InterfaceEvent)
admin.site.register(GeneralEvent)
# Register your models here.
