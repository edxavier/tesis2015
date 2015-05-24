from django.db import models

# Create your models here.

class Host(models.Model):
    direccion = models.IPAddressField(unique=True)
    nombre = models.CharField(max_length=30, blank=True)
    descripcion = models.CharField(max_length=150, blank=True)
    ubicacion = models.CharField(max_length=150, blank=True)
    uptime = models.IntegerField(help_text="minutos", blank=True)
    servicios = models.IntegerField(blank=True)
    procesos = models.IntegerField(blank=True)
    alarma_discos = models.BooleanField(default=False)
    alarma_procesos = models.BooleanField(default=False)
    alarma_procesador = models.BooleanField(default=False)

class BootEvent(models.Model):
    host = models.ForeignKey(Host)
    tipo = models.CharField(max_length=20, help_text="Tipo de evento; arranque, apagado")
    uptime = models.IntegerField(help_text="minutos", blank=True)
    fecha = models.DateTimeField()
    leido = models.BooleanField(default=False)


class InterfaceEvent(models.Model):
    host = models.ForeignKey(Host)
    uptime = models.IntegerField(help_text="minutos", blank=True)
    tipo = models.CharField(max_length=20, help_text="Tipo de evento; linkup, linkdown")
    nombre = models.CharField(max_length=30)
    estado_operacional = models.CharField(max_length=30)
    estado_administrativo = models.CharField(max_length=30)


class GeneralEvent(models.Model):
    host = models.ForeignKey(Host)
    tabla = models.CharField(max_length=20, help_text="Tipo de evento;")
    uptime = models.IntegerField(help_text="minutos", blank=True)
    item = models.CharField(max_length=30)
    warning = models.BooleanField(default=False)
    mensaje = models.CharField(max_length=120, blank=True)
