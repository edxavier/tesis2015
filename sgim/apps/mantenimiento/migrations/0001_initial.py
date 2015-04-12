# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('catalogo', '0002_cargo_estadomantenimiento_personal'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Programacion',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('fecha_inicio_prevista', models.DateTimeField()),
                ('fecha_fin_prevista', models.DateTimeField(default=None, blank=True)),
                ('inicio', models.DateTimeField(auto_now=True)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('estado', models.ForeignKey(to='catalogo.EstadoMantenimiento')),
                ('personal', models.ManyToManyField(to='catalogo.Personal')),
                ('responsable', models.ForeignKey(related_name='personal_set2', to='catalogo.Personal')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Rutina',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('titulo', models.CharField(max_length=100)),
                ('frecuencia', models.IntegerField(help_text=b'Frecuencia en dias')),
                ('paro_de_equipo', models.BooleanField(default=False, help_text=b'Indica si es necesario detener la operacion')),
                ('recomendacion', models.CharField(default=b'Ninguna', max_length=300)),
                ('duracion_estimada', models.FloatField(default=1, help_text=b'Duracion en horas', verbose_name=b'Duracion Estimada', blank=True)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('sistema', models.ForeignKey(to='catalogo.Sistema')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Tarea',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('nombre', models.CharField(max_length=100)),
                ('meteriales', models.CharField(default=b'N/A', max_length=100)),
                ('minutos', models.FloatField(default=1, help_text=b'Duracion en minutos', verbose_name=b'Duracion')),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('tipo_dispositivos', models.ManyToManyField(to='catalogo.TipoDispositivo')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='rutina',
            name='tareas',
            field=models.ManyToManyField(to='mantenimiento.Tarea'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='programacion',
            name='rutina',
            field=models.ForeignKey(to='mantenimiento.Rutina'),
            preserve_default=True,
        ),
    ]
