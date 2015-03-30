# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cuentas', '0003_auto_20150329_0031'),
    ]

    operations = [
        migrations.AddField(
            model_name='usuario',
            name='telefono',
            field=models.CharField(default=None, max_length=15),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='is_active',
            field=models.BooleanField(default=False, verbose_name=b'Esta Activo'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='is_staff',
            field=models.BooleanField(default=False, help_text=b'Indica si el usuario puede acceder al panel de administracion', verbose_name=b'Es Administrador'),
            preserve_default=True,
        ),
    ]
