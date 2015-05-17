from django.db import models

# Create your models here.
from apps.inicio.models import MarcaDeTiempo
from apps.catalogo.models import Personal, TipoIncidente, EstadoIncidente, EstadoCambio, SeveridadUrgencia, MedioNotificaion
from apps.inventario.models import Dispositivo, Servicio


class Actividad(models.Model):
    descripcion = models.TextField(help_text="Describa los trabajos realizados", blank=False)
    paro_equipo = models.BooleanField(default=False)
    duracion_paro = models.IntegerField(help_text="Indique cuanto duro el paro en minutos", default=0)
    inicio_actividad = models.DateTimeField()
    fin_actividad = models.DateTimeField()

    class Meta:
        abstract = True

class Incidencia(MarcaDeTiempo, models.Model):

    medio_notificacion = models.ForeignKey(MedioNotificaion)
    reporta = models.ForeignKey(Personal, help_text="Indica quien notifica el incidente")
    tipo  = models.ForeignKey(TipoIncidente)
    problema = models.TextField(help_text="Describa brevemente el problema que se presenta")
    causa = models.TextField(default="", help_text="Indique la posible causa del incidente")
    solucion = models.TextField(default="",help_text="Indique la posible solucion del incidente")
    dispositivo = models.ForeignKey(Dispositivo)
    servicios = models.ManyToManyField(Servicio, help_text="Servicios afectados por la incidencia", blank=True)
    urgencia = models.ForeignKey(SeveridadUrgencia)
    severidad = models.ForeignKey(SeveridadUrgencia, related_name='severidad_set2')
    relacion = models.ForeignKey('self', blank=True, null=True,
                                 help_text="Indica la relacion con la incidencia mas reciente que exista")
    estado = models.ForeignKey(EstadoIncidente)
    paro_equipo = models.BooleanField(default=False)
    duracion_paro = models.IntegerField(help_text="Indique cuanto duro el paro en minutos", default=0)

    def __unicode__(self):
        return "Inc-%s" % self.pk

class ActividadIncidencia(MarcaDeTiempo, Actividad):
    incidencia = models.ForeignKey(Incidencia)

    class Meta:
        verbose_name_plural = 'Actividad de Incidencia'

    def __unicode__(self):
        return "Act-%s" % self.pk


class Cambio(MarcaDeTiempo):
    titulo = models.CharField(max_length=100)
    solicitante = models.ForeignKey(Personal)
    proposito = models.TextField()
    responsable = models.ForeignKey(Personal, related_name="responsable")
    inicio_previsto = models.DateField(help_text="Cuando preeve implementarse")
    servicios = models.ManyToManyField(Servicio, help_text="Servicios afectados por el cambio", blank=True)
    dispositivos = models.ManyToManyField(Dispositivo, help_text="Dispositivos afectados por el cambioa", blank=True)
    estado = models.ForeignKey(EstadoCambio)

    def __unicode__(self):
        return self.titulo


class ActividadCambio(MarcaDeTiempo, Actividad):
    cambio = models.ForeignKey(Cambio)

    class Meta:
        verbose_name_plural = 'Actividad de Cambios'

    def __unicode__(self):
        return "Act-%s" % self.pk




