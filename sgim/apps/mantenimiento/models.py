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
from apps.catalogo.models import EstadoOperacional,FrecuenciaMantto


class Rutina(MarcaDeTiempo, models.Model):
    titulo = models.CharField(max_length=100)
    sistema = models.ForeignKey(Sistema)
    frecuencia = models.ForeignKey(FrecuenciaMantto)
    recomendacion = models.CharField(max_length=300, default="Ninguna")
    duracion_estimada = models.FloatField(help_text="Duracion en horas (puede indicarse con punto decimal)",
                                          default=1, verbose_name="Duracion Estimada")

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


class Tarea(MarcaDeTiempo, models.Model):
    rutina = models.ForeignKey(Rutina)
    nombre = models.CharField(max_length=100)
    valor_ref = models.CharField(max_length=100, help_text='Valor de referencia')

    def __unicode__(self):
        return self.nombre

class Programacion(MarcaDeTiempo, models.Model):
    rutina = models.ForeignKey(Rutina)
    fecha_inicio_prevista = models.DateTimeField()
    fecha_fin_prevista = models.DateTimeField(blank=True, null=True, )
    inicio = models.DateTimeField(blank=True, null=True, )
    fin = models.DateTimeField(blank=True, null=True, )
    personal = models.ManyToManyField(Personal, related_name="personal_set")
    responsable = models.ForeignKey(Personal, related_name="personal_set2")
    estado = models.ForeignKey(EstadoMantenimiento)

    class Meta:
        verbose_name_plural = 'Planes de Mantto.'
        permissions = (
            ("iniciar_finalizar_mantto", "Puede actualizar el estado de un plan de mantto"),
            ("cancelar_mantto", "Puede cancelar un plan de mantto"),
        )

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

    def get_FIP(self):
        return self.fecha_inicio_prevista.strftime('%d-%m-%y %H:%M')

    def get_IReal(self):
        return self.inicio.strftime('%d-%m-%y %H:%M')

    def get_FFP(self):
        return self.fecha_fin_prevista.strftime('%d-%m-%y %H:%M')

    def get_FReal(self):
            return self.fin.strftime('%d-%m-%y %H:%M')



class BoletaTrabajo(MarcaDeTiempo, models.Model):
    TIPO_MANTTO = (
        ('1', 'Preventivo'),
        ('2', 'Correctivo'),
    )

    orden = models.ForeignKey(Programacion, blank=True, null=True, help_text="Este campo es opcional")
    tipo = models.CharField('Tipo Trabajo',choices=TIPO_MANTTO, max_length=30, default=1)
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


