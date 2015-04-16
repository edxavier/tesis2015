# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mantenimiento', '0005_boletatrabajo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='boletatrabajo',
            name='orden',
            field=models.ForeignKey(blank=True, to='mantenimiento.Programacion', help_text=b'Este campo es opcional', null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='boletatrabajo',
            name='paro_operacion',
            field=models.BooleanField(default=False, help_text=b'Marca para indicar que si se realizo un paro'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='boletatrabajo',
            name='tipo',
            field=models.CharField(max_length=30, verbose_name=b'Tipo Trabajo', choices=[(b'1', b'Preventivo_Programado'), (b'2', b'Correctivo_Programado'), (b'3', b'Preventivo_No_Programado'), (b'4', b'Correctivo_No_Programado')]),
            preserve_default=True,
        ),
    ]
