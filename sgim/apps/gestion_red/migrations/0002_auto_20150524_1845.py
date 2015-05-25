# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('gestion_red', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='generalevent',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 5, 25, 0, 44, 38, 91556, tzinfo=utc), auto_now_add=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='host',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 5, 25, 0, 44, 54, 224944, tzinfo=utc), auto_now_add=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='interfaceevent',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime(2015, 5, 25, 0, 45, 5, 302790, tzinfo=utc), auto_now_add=True),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='bootevent',
            name='fecha',
            field=models.DateTimeField(auto_now_add=True),
            preserve_default=True,
        ),
    ]
