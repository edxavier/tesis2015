# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='programacion',
            name='fin',
            field=models.DateTimeField(default=None, auto_now_add=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='programacion',
            name='inicio',
            field=models.DateTimeField(default=None, auto_now_add=True),
            preserve_default=True,
        ),
    ]
