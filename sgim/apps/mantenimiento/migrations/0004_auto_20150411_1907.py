# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0003_auto_20150411_1902'),
    ]

    operations = [
        migrations.AlterField(
            model_name='programacion',
            name='fecha_fin_prevista',
            field=models.DateTimeField(null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='programacion',
            name='fin',
            field=models.DateTimeField(null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='programacion',
            name='inicio',
            field=models.DateTimeField(null=True, blank=True),
            preserve_default=True,
        ),
    ]
