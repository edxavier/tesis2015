# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='programacion',
            options={'verbose_name_plural': 'Planificaciones de Mantto.', 'permissions': (('iniciar_finalizar_mantto', 'Puede actualizar el estado de un plande mantenimietno (En proceso, Terminado)'), ('cancelar_mantto', 'Puede cancelar un plan de mantto'))},
        ),
    ]
