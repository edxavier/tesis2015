from django.db import models
from apps.inicio.models import MarcaDeTiempo


# Create your models here.
class TipoDispositivo(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class Sistema(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class Edificio(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class Oficina(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)
    edificio = models.ForeignKey(Edificio)

    def __unicode__(self):
        return self.nombre


class TipoServicio(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class TipoComponente(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class EstadoOperacional(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class EstadoMantenimiento(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class Cargo(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=100)
    empresa = models.CharField(max_length=15)

    def __unicode__(self):
        return self.nombre

class TipoIncidente(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=100)

    def __unicode__(self):
        return self.nombre

class Personal(MarcaDeTiempo, models.Model):
    nombre_completo = models.CharField(max_length=100)
    telefono = models.CharField(max_length=15, blank=True)
    correo = models.CharField(max_length=15, blank=True)
    cargo = models.ForeignKey(Cargo)

    def __unicode__(self):
        return self.nombre_completo
