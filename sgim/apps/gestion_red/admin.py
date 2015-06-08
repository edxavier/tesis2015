from django.contrib import admin
from .models import *

@admin.register(Host)
class HostAdmin(admin.ModelAdmin):
    list_display = ("direccion", "nombre", "fecha")

@admin.register(BootEvent)
class BootEventAdmin(admin.ModelAdmin):
    list_display = ("host", "tipo", "uptime", "fecha")

@admin.register(NotificationEvent)
class NotificationEventAdmin(admin.ModelAdmin):
    list_display = ("host", "description", "fecha")

@admin.register(GeneralEvent)
class GeneralEventAdmin(admin.ModelAdmin):
    list_display = ("host", "tabla", "item", "uptime", "warning", "mensaje", "fecha")


# Register your models here.


@admin.register(Storage)
class StorageAdmin(admin.ModelAdmin):
    list_display = ("host", 'type', 'description')


@admin.register(Device)
class StorageAdmin(admin.ModelAdmin):
    list_display = ("host", )


@admin.register(MemoryHistory)
class StorageAdmin(admin.ModelAdmin):
    list_display = ("host", )


@admin.register(LoadAvgHistory)
class StorageAdmin(admin.ModelAdmin):
    list_display = ("host", )


@admin.register(DiskHistory)
class StorageAdmin(admin.ModelAdmin):
    list_display = ("host", )



@admin.register(Process)
class StorageAdmin(admin.ModelAdmin):
    list_display = ("host", )