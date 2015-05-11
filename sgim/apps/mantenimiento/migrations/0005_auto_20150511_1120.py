# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0004_auto_20150510_1720'),
    ]

    operations = [
        migrations.AlterField(
            model_name='programacion',
            name='personal',
            field=models.ManyToManyField(related_name='personal_set', to='catalogo.Personal'),
            preserve_default=True,
        ),
    ]
