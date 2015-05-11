# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0003_auto_20150510_1719'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='programacion',
            options={'verbose_name_plural': 'Planes de Mantto.', 'permissions': (('iniciar_finalizar_mantto', 'Puede actualizar el estado de un plan de mantto'), ('cancelar_mantto', 'Puede cancelar un plan de mantto'))},
        ),
    ]
