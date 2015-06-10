from django.db import models
from apps.inicio.utils import get_formated_duration
# Create your models here.

class Host(models.Model):
    direccion = models.IPAddressField(unique=True, db_index=True)
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
    fecha = models.DateTimeField(auto_now_add=True, db_index=True)
    leido = models.BooleanField(default=False)

    def __unicode__(self):
        return self.tipo

    def get_duration(self):
        return get_formated_duration(self.uptime)

class NotificationEvent(models.Model):
    host = models.ForeignKey(Host)
    description = models.CharField(max_length=200)
    fecha = models.DateTimeField(auto_now_add=True, db_index=True)
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
    host = models.ForeignKey(Host, db_index=True)
    tabla = models.CharField(max_length=20, help_text="Tipo de evento;")
    uptime = models.IntegerField(help_text="minutos", blank=True)
    item = models.CharField(max_length=30)
    warning = models.BooleanField(default=False)
    mensaje = models.CharField(max_length=120, blank=True)
    leido = models.BooleanField(default=False)
    fecha = models.DateTimeField(auto_now_add=True, db_index=True)

    def __unicode__(self):
        return self.item + " " + self.tabla

    def get_duration(self):
        return get_formated_duration(self.uptime)


class Storage(models.Model):
    host = host = models.ForeignKey(Host, db_index=True)
    index = models.IntegerField(default=0)
    type = models.CharField(max_length=30)
    description = models.CharField(max_length=50)
    size = models.IntegerField(default=0)
    used = models.IntegerField(default=0)
    percent_used = models.IntegerField(default=0)
    allocation_failures = models.IntegerField(default=0)

class Device(models.Model):
    host = host = models.ForeignKey(Host, db_index=True)
    index = models.IntegerField(default=0)
    type = models.CharField(max_length=30)
    description = models.CharField(max_length=300)
    status = models.CharField(max_length=100)
    errors = models.IntegerField(default=0)
    created = models.DateTimeField(auto_now=True)

class LoadAvgHistory(models.Model):
    host = host = models.ForeignKey(Host, db_index=True)
    load1 = models.FloatField(default=0)
    load5 = models.FloatField(default=0)
    load15 = models.FloatField(default=0)
    threshold1 = models.FloatField(default=0)
    threshold5 = models.FloatField(default=0)
    threshold15 = models.FloatField(default=0)
    flag1 = models.BooleanField(default=False)
    flag5 = models.BooleanField(default=False)
    flag15 = models.BooleanField(default=False)
    msg1 = models.CharField(max_length=70)
    msg5 = models.CharField(max_length=70)
    msg15 = models.CharField(max_length=70)
    created = models.DateTimeField(auto_now=True)

    def get_formated_date(self):
            return self.created.strftime('%Y-%m-%d %H:%M:%S')

    def get_num_processors(self):
        count = Device.objects.filter(host=self.host, type='Procesador', status='running').count()
        return count

class MemoryHistory(models.Model):
    host = host = models.ForeignKey(Host, db_index=True)
    total_swap = models.IntegerField(default=0)
    total_ram = models.IntegerField(default=0)
    free_swap = models.IntegerField(default=0)
    free_ram = models.IntegerField(default=0)
    created = models.DateTimeField(auto_now=True)

    def percent_used(self):
        used = self.total_ram - self.free_ram
        return (used * 100) / self.total_ram

    def get_formated_date(self):
            return self.created.strftime('%Y-%m-%d %H:%M:%S')


class DiskHistory(models.Model):
    host = host = models.ForeignKey(Host, db_index=True)
    path = models.CharField(max_length=20)
    device = models.CharField(max_length=300)
    min_free = models.IntegerField(default=15)
    size = models.IntegerField(default=0)
    used = models.IntegerField(default=0)
    percent_used = models.IntegerField(default=0)
    flag = models.BooleanField(default=False)
    msg = models.CharField(max_length=200)
    created = models.DateTimeField(auto_now=True)

    def __unicode__(self):
        return self.path

    def get_formated_date(self):
            return self.created.strftime('%Y-%m-%d %H:%M:%S')


class Process(models.Model):
    host = host = models.ForeignKey(Host, db_index=True)
    index = models.IntegerField(default=0)
    name = models.CharField(max_length=300)
    min = models.IntegerField(default=0)
    max = models.IntegerField(default=0)
    count = models.IntegerField(default=0)
    flag = models.BooleanField(default=False)
    msg = models.CharField(max_length=100)
    created = models.DateTimeField(auto_now=True)


