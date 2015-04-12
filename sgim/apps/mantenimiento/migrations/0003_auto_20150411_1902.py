# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0002_auto_20150411_1856'),
    ]

    operations = [
        migrations.AlterField(
            model_name='programacion',
            name='fecha_fin_prevista',
            field=models.DateTimeField(default=None, auto_now_add=True),
            preserve_default=True,
        ),
    ]
