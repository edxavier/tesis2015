# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0006_auto_20150413_1230'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='boletatrabajo',
            options={'verbose_name_plural': 'Boletas de Trabajo'},
        ),
        migrations.AlterModelOptions(
            name='programacion',
            options={'verbose_name_plural': 'Programaciones Mantto'},
        ),
    ]
