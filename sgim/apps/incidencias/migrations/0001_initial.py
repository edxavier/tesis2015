# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('catalogo', '0002_auto_20150507_2104'),
    ]

    operations = [
        migrations.CreateModel(
            name='ActividadCambio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('descripcion', models.TextField(help_text=b'Describa los trabajos realizados')),
                ('paro_equipo', models.BooleanField(default=False)),
                ('duracion_paro', models.IntegerField(default=0, help_text=b'Indique cuanto duro el paro en minutos')),
                ('inicio_actividad', models.DateTimeField()),
                ('fin_actividad', models.DateTimeField()),
            ],
            options={
                'verbose_name_plural': 'Actividad de Cambios',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='ActividadIncidencia',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('descripcion', models.TextField(help_text=b'Describa los trabajos realizados')),
                ('paro_equipo', models.BooleanField(default=False)),
                ('duracion_paro', models.IntegerField(default=0, help_text=b'Indique cuanto duro el paro en minutos')),
                ('inicio_actividad', models.DateTimeField()),
                ('fin_actividad', models.DateTimeField()),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Actividad de Incidencia',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Cambio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('titulo', models.CharField(max_length=100)),
                ('proposito', models.TextField()),
                ('inicio_previsto', models.DateField(help_text=b'Cuando preeve implementarse')),
                ('estado', models.CharField(default=1, max_length=30, choices=[(b'1', b'Pendiente'), (b'2', b'En proceso'), (b'3', b'Terminado'), (b'4', b'Cancelado')])),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('dispositivos', models.ManyToManyField(help_text=b'Dispositivos afectados por el cambioa', to='inventario.Dispositivo', blank=True)),
                ('responsable', models.ForeignKey(related_name='responsable', to='catalogo.Personal')),
                ('servicios', models.ManyToManyField(help_text=b'Servicios afectados por el cambio', to='inventario.Servicio', blank=True)),
                ('solicitante', models.ForeignKey(to='catalogo.Personal')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Incidencia',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('medio_notificacion', models.CharField(default=1, max_length=30, choices=[(b'1', b'Telefono'), (b'2', b'Correo'), (b'3', b'En Persona')])),
                ('problema', models.TextField(help_text=b'Describa brevemente el problema que se presenta')),
                ('causa', models.TextField(default=b'', help_text=b'Indique la posible causa del incidente')),
                ('solucion', models.TextField(default=b'', help_text=b'Indique la posible solucion del incidente')),
                ('urgencia', models.CharField(default=1, max_length=30, choices=[(b'1', b'Baja'), (b'2', b'Media'), (b'3', b'Alta')])),
                ('severidad', models.CharField(default=1, max_length=30, choices=[(b'1', b'Baja'), (b'2', b'Media'), (b'3', b'Alta')])),
                ('estado', models.CharField(default=1, max_length=30, choices=[(b'1', b'Cerrado'), (b'2', b'Pendiente'), (b'3', b'Observacion'), (b'4', b'Cancelado')])),
                ('paro_equipo', models.BooleanField(default=False)),
                ('duracion_paro', models.IntegerField(default=0, help_text=b'Indique cuanto duro el paro en minutos')),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('dispositivo', models.ForeignKey(to='inventario.Dispositivo')),
                ('relacion', models.ForeignKey(blank=True, to='incidencias.Incidencia', help_text=b'Indica la relacion con la incidencia mas reciente que exista', null=True)),
                ('reporta', models.ForeignKey(help_text=b'Indica quien notifica el incidente', to='catalogo.Personal')),
                ('servicios', models.ManyToManyField(help_text=b'Servicios afectados por la incidencia', to='inventario.Servicio', blank=True)),
                ('tipo', models.ForeignKey(to='catalogo.TipoIncidente')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='actividadincidencia',
            name='incidencia',
            field=models.ForeignKey(to='incidencias.Incidencia'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='actividadcambio',
            name='cambio',
            field=models.ForeignKey(to='incidencias.Cambio'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='actividadcambio',
            name='creador',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
    ]
