# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('catalogo', '0003_tipoincidente'),
        ('incidencias', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ActividadCambio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('descripcion', models.TextField(help_text=b'Describa los trabajos realizados')),
                ('paro_equipo', models.BooleanField(default=False)),
                ('duracion_paro', models.IntegerField(default=0, help_text=b'Indique cuanto duro el paro en minutos')),
                ('inicio_actividad', models.DateTimeField()),
                ('fin_actividad', models.DateTimeField()),
            ],
            options={
                'verbose_name_plural': 'Actividades',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='ActividadIncidencia',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('descripcion', models.TextField(help_text=b'Describa los trabajos realizados')),
                ('paro_equipo', models.BooleanField(default=False)),
                ('duracion_paro', models.IntegerField(default=0, help_text=b'Indique cuanto duro el paro en minutos')),
                ('inicio_actividad', models.DateTimeField()),
                ('fin_actividad', models.DateTimeField()),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('incidencia', models.ForeignKey(to='incidencias.Incidencia')),
            ],
            options={
                'verbose_name_plural': 'Actividades',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Cambios',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('titulo', models.CharField(max_length=100)),
                ('proposito', models.TextField(default=b'')),
                ('urgencia', models.CharField(max_length=30, choices=[(b'1', b'Baja'), (b'2', b'Media'), (b'3', b'Alta')])),
                ('estado', models.CharField(max_length=30, choices=[(b'1', b'Cerrado'), (b'2', b'Pendiente'), (b'3', b'Observacion'), (b'4', b'Cancelado')])),
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
        migrations.RemoveField(
            model_name='actividad',
            name='creador',
        ),
        migrations.RemoveField(
            model_name='actividad',
            name='incidencia',
        ),
        migrations.DeleteModel(
            name='Actividad',
        ),
        migrations.AddField(
            model_name='actividadcambio',
            name='cambio',
            field=models.ForeignKey(to='incidencias.Cambios'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='actividadcambio',
            name='creador',
            field=models.ForeignKey(to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='incidencia',
            name='estado',
            field=models.CharField(max_length=30, choices=[(b'1', b'Cerrado'), (b'2', b'Pendiente'), (b'3', b'Observacion'), (b'4', b'Cancelado')]),
            preserve_default=True,
        ),
    ]
