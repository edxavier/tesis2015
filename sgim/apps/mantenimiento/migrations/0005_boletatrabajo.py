# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('catalogo', '0002_cargo_estadomantenimiento_personal'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('inventario', '0001_initial'),
        ('mantenimiento', '0004_auto_20150411_1907'),
    ]

    operations = [
        migrations.CreateModel(
            name='BoletaTrabajo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('descripcion', models.TextField(help_text=b'Describa brevemente el trabajo realizado')),
                ('paro_operacion', models.BooleanField(default=False)),
                ('tiempo_paro', models.IntegerField(default=0, help_text=b'Minutos que dura el paro si fuese necesario')),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('dispositivo', models.ForeignKey(to='inventario.Dispositivo')),
                ('estado_final', models.ForeignKey(to='catalogo.EstadoOperacional')),
                ('orden', models.ForeignKey(blank=True, to='mantenimiento.Programacion', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
    ]
