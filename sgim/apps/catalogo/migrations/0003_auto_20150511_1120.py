# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalogo', '0002_auto_20150507_2104'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sistema',
            name='nombre',
            field=models.CharField(unique=True, max_length=30),
            preserve_default=True,
        ),
    ]
