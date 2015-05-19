from django.db import models
from apps.inicio.models import MarcaDeTiempo


# Create your models here.
class TipoDispositivo(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class Sistema(MarcaDeTiempo):
    nombre = models.CharField(max_length=30, unique=True)

    def __unicode__(self):
        return self.nombre


class Edificio(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class Oficina(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)
    edificio = models.ForeignKey(Edificio)

    def __unicode__(self):
        return self.nombre


class TipoServicio(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class TipoComponente(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre


class EstadoOperacional(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class EstadoMantenimiento(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class EstadoIncidente(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class EstadoCambio(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class SeveridadUrgencia(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class MedioNotificaion(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)

    def __unicode__(self):
        return self.nombre

class FrecuenciaMantto(MarcaDeTiempo):
    nombre = models.CharField(max_length=30)
    dias = models.PositiveIntegerField()

    def __unicode__(self):
        return self.nombre

class Cargo(MarcaDeTiempo):
    nombre = models.CharField(max_length=100)
    empresa = models.CharField(max_length=15)

    def __unicode__(self):
        return self.nombre

class TipoIncidente(MarcaDeTiempo):
    nombre = models.CharField(max_length=100)

    def __unicode__(self):
        return self.nombre

class Personal(MarcaDeTiempo):
    nombre_completo = models.CharField(max_length=100)
    telefono = models.CharField(max_length=15, blank=True)
    correo = models.CharField(max_length=50, blank=True)
    cargo = models.ForeignKey(Cargo)

    def __unicode__(self):
        return self.nombre_completo
