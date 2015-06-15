from django.db import models
from apps.inicio.models import MarcaDeTiempo
from apps.catalogo.models import (
    Sistema, TipoDispositivo,
    Edificio, Oficina, TipoServicio,
    TipoComponente, EstadoOperacional
)


# Create your models here.
class EspecificacionGeneral(models.Model):
    '''
    Modelo utilizado para heredarlo en otros modelos
    '''
    marca = models.CharField(max_length=30)
    modelo = models.CharField(max_length=30, blank=True)
    serie = models.CharField(max_length=30, unique=True, verbose_name="Num. de Serie")
    inventario = models.CharField(max_length=30,  blank=True, null=True, verbose_name="Num.  de Inventario")

    class Meta:
        #Esto es para que no se cree una tabla en la base de datos
        abstract = True


class SubSistema(MarcaDeTiempo, models.Model):
    nombre = models.CharField(unique=True, max_length=50)
    sistema = models.ForeignKey(Sistema)
    descripcion = models.CharField(unique=True, max_length=150)

    def __unicode__(self):
        return self.nombre


# Create your models here.
class Dispositivo(EspecificacionGeneral, MarcaDeTiempo, models.Model):
    posicion_logica = models.CharField(max_length=50)
    instalacion = models.DateField(help_text='Fecha de puesta en marcha')
    #relaciones
    estado = models.ForeignKey(EstadoOperacional)
    edificio = models.ForeignKey(Edificio)
    oficina = models.ForeignKey(Oficina)
    sistema = models.ForeignKey(Sistema)
    tipo = models.ForeignKey(TipoDispositivo)

    def display_me(self):
        return self.posicion_logica + " / " + self.tipo.nombre + " / " + self.serie

    def __unicode__(self):
        return self.posicion_logica


class Componente(EspecificacionGeneral, MarcaDeTiempo, models.Model):
    """docstring for Componente"""
    instalado_en = models.ForeignKey(Dispositivo)
    tipo = models.ForeignKey(TipoComponente)
    estado = models.ForeignKey(EstadoOperacional)

    def __unicode__(self):
        return self.tipo.nombre


class Servicio(MarcaDeTiempo, models.Model):
    nombre = models.CharField(unique=True, max_length=50)
    tipo = models.ForeignKey(TipoServicio)
    # 119.4, 121.9, Planes de vuelo
    #tipo  Radiofrecuencia, LineaTelefonica, AFTN, Meteorologico
    descripcion = models.CharField(max_length=150, blank=True, null=True)

    def __unicode__(self):
        return self.nombre
