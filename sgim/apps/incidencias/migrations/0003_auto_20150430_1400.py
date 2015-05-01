# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('incidencias', '0002_auto_20150430_0844'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cambio',
            name='estado',
            field=models.CharField(default=1, max_length=30, choices=[(b'1', b'Pendiente'), (b'2', b'En proceso'), (b'3', b'Terminado'), (b'4', b'Cancelado')]),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='cambio',
            name='proposito',
            field=models.TextField(),
            preserve_default=True,
        ),
    ]
