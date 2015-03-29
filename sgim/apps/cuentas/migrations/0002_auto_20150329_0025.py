# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cuentas', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='usuario',
            options={'permissions': (('ver_usuarios', 'Puede ver la lista de usuarios'), ('change_task_status', 'Can change the status of tasks'))},
        ),
        migrations.AlterField(
            model_name='usuario',
            name='firstname',
            field=models.CharField(max_length=50, verbose_name=b'Nombres'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='is_active',
            field=models.BooleanField(default=True, verbose_name=b'Esta Activo'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='is_staff',
            field=models.BooleanField(default=False, help_text=b'Indica si el usuario puede acceder al panel de administracion', verbose_name=b'Es Personal'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='lastname',
            field=models.CharField(max_length=50, verbose_name=b'Apellidos'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='usuario',
            name='username',
            field=models.CharField(unique=True, max_length=50, verbose_name=b'Usuario'),
            preserve_default=True,
        ),
    ]
