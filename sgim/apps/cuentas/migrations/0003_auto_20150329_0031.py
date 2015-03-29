# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cuentas', '0002_auto_20150329_0025'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='usuario',
            options={},
        ),
        migrations.AlterField(
            model_name='usuario',
            name='firstname',
            field=models.CharField(max_length=50, verbose_name=b'Nombres', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='imagen',
            field=models.ImageField(upload_to=b'cuentas/img', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='lastname',
            field=models.CharField(max_length=50, verbose_name=b'Apellidos', blank=True),
            preserve_default=True,
        ),
    ]
