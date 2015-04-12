# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cuentas', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuario',
            name='imagen',
            field=models.ImageField(default=b'cuentas/img/default.png', upload_to=b'cuentas/img', blank=True),
            preserve_default=True,
        ),
    ]
