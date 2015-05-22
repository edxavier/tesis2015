# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rutina',
            name='duracion_estimada',
            field=models.FloatField(default=1, help_text=b'Duracion en horas (puede indicarse con punto decimal)', verbose_name=b'Duracion Estimada'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='tarea',
            name='valor_ref',
            field=models.CharField(help_text=b'Valor de referencia', max_length=100),
            preserve_default=True,
        ),
    ]
