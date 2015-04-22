# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='componente',
            name='inventario',
            field=models.CharField(max_length=30, unique=True, null=True, verbose_name=b'No de Inventario', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='componente',
            name='serie',
            field=models.CharField(unique=True, max_length=30, verbose_name=b'No de Serie'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='dispositivo',
            name='inventario',
            field=models.CharField(max_length=30, unique=True, null=True, verbose_name=b'No de Inventario', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='dispositivo',
            name='serie',
            field=models.CharField(unique=True, max_length=30, verbose_name=b'No de Serie'),
            preserve_default=True,
        ),
    ]
