# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('gestion_red', '0002_auto_20150524_1845'),
    ]

    operations = [
        migrations.AlterField(
            model_name='host',
            name='uptime',
            field=models.IntegerField(default=0, help_text=b'minutos', blank=True),
            preserve_default=True,
        ),
    ]
