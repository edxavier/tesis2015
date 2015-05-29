from django.db import models
from apps.inicio.utils import get_formated_duration
# Create your models here.

class Host(models.Model):
    direccion = models.IPAddressField(unique=True)
    nombre = models.CharField(max_length=30, blank=True)
    descripcion = models.CharField(max_length=150, blank=True)
    ubicacion = models.CharField(max_length=150, blank=True)
    uptime = models.IntegerField(help_text="minutos", blank=True, default=0)
    servicios = models.IntegerField(blank=True, default=0)
    procesos = models.IntegerField(blank=True, default=0)
    usuarios = models.IntegerField(blank=True, default=0)
    alarma_discos = models.BooleanField(default=False)
    alarma_procesos = models.BooleanField(default=False)
    alarma_procesador = models.BooleanField(default=False)
    alarma_memoria = models.BooleanField(default=False)
    esta_conectado = models.BooleanField(default=True)
    fecha = models.DateTimeField(auto_now_add=True)
    actualizado = models.DateTimeField(auto_now=True)

    def __unicode__(self):
        return self.direccion

    def get_duration(self):
        return get_formated_duration(self.uptime)

class BootEvent(models.Model):
    host = models.ForeignKey(Host)
    tipo = models.CharField(max_length=20, help_text="Tipo de evento; arranque, apagado")
    uptime = models.IntegerField(help_text="minutos", blank=True)
    fecha = models.DateTimeField(auto_now_add=True)
    leido = models.BooleanField(default=False)

    def __unicode__(self):
        return self.tipo

    def get_duration(self):
        return get_formated_duration(self.uptime)


class InterfaceEvent(models.Model):
    host = models.ForeignKey(Host)
    uptime = models.IntegerField(help_text="minutos", blank=True, default=0)
    tipo = models.CharField(max_length=20, help_text="Tipo de evento; linkup, linkdown")
    nombre = models.CharField(max_length=30)
    estado_operacional = models.CharField(max_length=30)
    estado_administrativo = models.CharField(max_length=30)
    leido = models.BooleanField(default=False)
    fecha = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.tipo

    def get_duration(self):
        return get_formated_duration(self.uptime)


class GeneralEvent(models.Model):
    host = models.ForeignKey(Host)
    tabla = models.CharField(max_length=20, help_text="Tipo de evento;")
    uptime = models.IntegerField(help_text="minutos", blank=True)
    item = models.CharField(max_length=30)
    warning = models.BooleanField(default=False)
    mensaje = models.CharField(max_length=120, blank=True)
    leido = models.BooleanField(default=False)
    fecha = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.item + " " + self.tabla

    def get_duration(self):
        return get_formated_duration(self.uptime)
