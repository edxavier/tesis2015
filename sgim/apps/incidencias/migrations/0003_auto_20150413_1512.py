# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('catalogo', '0003_tipoincidente'),
        ('incidencias', '0002_auto_20150413_1503'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cambio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('titulo', models.CharField(max_length=100)),
                ('proposito', models.TextField(default=b'')),
                ('urgencia', models.CharField(max_length=30, choices=[(b'1', b'Baja'), (b'2', b'Media'), (b'3', b'Alta')])),
                ('inicio_previsto', models.DateField(help_text=b'Cuando preeve implementarse')),
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
            model_name='cambios',
            name='creador',
        ),
        migrations.RemoveField(
            model_name='cambios',
            name='dispositivos',
        ),
        migrations.RemoveField(
            model_name='cambios',
            name='responsable',
        ),
        migrations.RemoveField(
            model_name='cambios',
            name='servicios',
        ),
        migrations.RemoveField(
            model_name='cambios',
            name='solicitante',
        ),
        migrations.AlterModelOptions(
            name='actividadcambio',
            options={'verbose_name_plural': 'Actividad de Cambios'},
        ),
        migrations.AlterModelOptions(
            name='actividadincidencia',
            options={'verbose_name_plural': 'Actividad de Incidencia'},
        ),
        migrations.AlterField(
            model_name='actividadcambio',
            name='cambio',
            field=models.ForeignKey(to='incidencias.Cambio'),
            preserve_default=True,
        ),
        migrations.DeleteModel(
            name='Cambios',
        ),
    ]
