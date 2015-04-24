from django.db import models
from apps.inicio.models import MarcaDeTiempo
from apps.catalogo.models import Sistema
from apps.catalogo.models import TipoDispositivo
from apps.catalogo.models import Personal
from apps.catalogo.models import EstadoMantenimiento
from django.contrib.humanize.templatetags.humanize import number_format, _
from apps.inventario.models import Dispositivo
from django.dispatch import receiver
from datetime import datetime, timedelta
from apps.catalogo.models import EstadoOperacional


class Tarea(MarcaDeTiempo, models.Model):
    nombre = models.CharField(max_length=100)
    meteriales = models.CharField(max_length=100, default="N/A", verbose_name="Herramientas")
    tipo_dispositivos = models.ManyToManyField(TipoDispositivo, verbose_name="Tipos de Dispositivo")
    minutos = models.FloatField(help_text="Duracion en minutos", default=1, verbose_name="Duracion")

    def __unicode__(self):
        return self.nombre

    def duracion_estimada(self):
        return "%s min" % (number_format(self.minutos, decimal_pos=0, use_l10n=True, force_grouping=True),)


class Rutina(MarcaDeTiempo, models.Model):
    titulo = models.CharField(max_length=100)
    sistema = models.ForeignKey(Sistema)
    frecuencia = models.IntegerField(help_text='Frecuencia en dias')
    paro_de_equipo = models.BooleanField(default=False, help_text="Indica si es necesario detener la operacion")
    recomendacion = models.CharField(max_length=300, default="Ninguna")
    duracion_estimada = models.FloatField(help_text="Duracion en horas", blank=True,
                                          default=1, verbose_name="Duracion Estimada")
    tareas = models.ManyToManyField(Tarea)

    def __unicode__(self):
        return self.titulo

    def tiempo_estimado(self):
        return "%s hora(s)" % (number_format(self.duracion_estimada, decimal_pos=2, ),)

    def equipos(self):
        Ndisp = Dispositivo.objects.filter(sistema__pk=self.sistema.pk).count()
        return "%s" % (Ndisp,)

    def numero_tareas(self):
        Ntasks = Tarea.objects.filter(rutina__pk=self.pk).count()
        return "%s" % (Ntasks)


class Programacion(MarcaDeTiempo, models.Model):
    rutina = models.ForeignKey(Rutina)
    fecha_inicio_prevista = models.DateTimeField()
    fecha_fin_prevista = models.DateTimeField(blank=True, null=True, )
    inicio = models.DateTimeField(blank=True, null=True, )
    fin = models.DateTimeField(blank=True, null=True, )
    personal = models.ManyToManyField(Personal)
    responsable = models.ForeignKey(Personal, related_name="personal_set2")
    estado = models.ForeignKey(EstadoMantenimiento)

    class Meta:
        verbose_name_plural = 'Programaciones Mantto'

    def __unicode__(self):
        return "Orden %s" % self.pk

    def tiempo_estimado(self):
        t = (self.fecha_fin_prevista - self.fecha_inicio_prevista)
        return "%s" % (t,)

    def equipos(self):
        Ndisp = Dispositivo.objects.filter(sistema__pk=self.rutina.sistema.pk).count()
        return "%s" % (Ndisp,)

    def mantto(self):
        return "%s" % (self.rutina.titulo,)


class BoletaTrabajo(MarcaDeTiempo, models.Model):
    TIPO_MANTTO = (
        ('1', 'Preventivo_Programado'),
        ('2', 'Correctivo_Programado'),
        ('3', 'Preventivo_No_Programado'),
        ('4', 'Correctivo_No_Programado'),
    )

    orden = models.ForeignKey(Programacion, blank=True, null=True, help_text="Este campo es opcional")
    tipo = models.CharField('Tipo Trabajo',choices=TIPO_MANTTO, max_length=30,)
    dispositivo = models.ForeignKey(Dispositivo)
    descripcion = models.TextField(help_text="Describa brevemente el trabajo realizado")
    paro_operacion = models.BooleanField(default=False, help_text="Marca para indicar que si se realizo un paro")
    tiempo_paro = models.IntegerField(default=0, help_text="Minutos que dura el paro si fuese necesario")
    estado_final = models.ForeignKey(EstadoOperacional)

    class Meta:
        verbose_name_plural = 'Boletas de Trabajo'

    def __unicode__(self):
        return "Boleta %s" % self.pk

    def encargado(self):
        if self.orden:
            return "%s" % self.orden.responsable
        else:
            return "%s - [ %s ]" % (self.creador, self.creador.firstname)


@receiver(models.signals.post_save, sender=Tarea)
def actualizarTiempos(sender, instance, created, **kwargs):
    if not created:
        # si el objeto no se acaba de crear
        #obtener la tupla
        t = Tarea.objects.filter(pk=instance.pk)
        """obtener todas las rutinas que tengan relacion con las tareas en el resultado
        anterior"""
        rutinas = Rutina.objects.filter(tareas__in=t)
        #realizar la actualizacion de los tiempos para todas ellas
        for r in rutinas:
            tareas = Tarea.objects.filter(rutina__pk=r.pk)
            Ndisp = Dispositivo.objects.filter(sistema__pk=r.sistema.pk).count()
            minutos = 0
            for t in tareas:
                minutos += t.minutos
            r.duracion_estimada = (minutos / 60) * Ndisp
            r.save()


