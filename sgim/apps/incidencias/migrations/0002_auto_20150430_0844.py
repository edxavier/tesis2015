# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('incidencias', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cambio',
            name='urgencia',
        ),
        migrations.AlterField(
            model_name='cambio',
            name='estado',
            field=models.CharField(default=1, max_length=30, choices=[(b'1', b'Cerrado'), (b'2', b'Pendiente'), (b'3', b'Observacion'), (b'4', b'Cancelado')]),
            preserve_default=True,
        ),
    ]
