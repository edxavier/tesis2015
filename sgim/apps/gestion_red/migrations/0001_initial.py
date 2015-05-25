# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BootEvent',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('tipo', models.CharField(help_text=b'Tipo de evento; arranque, apagado', max_length=20)),
                ('uptime', models.IntegerField(help_text=b'minutos', blank=True)),
                ('fecha', models.DateTimeField()),
                ('leido', models.BooleanField(default=False)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='GeneralEvent',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('tabla', models.CharField(help_text=b'Tipo de evento;', max_length=20)),
                ('uptime', models.IntegerField(help_text=b'minutos', blank=True)),
                ('item', models.CharField(max_length=30)),
                ('warning', models.BooleanField(default=False)),
                ('mensaje', models.CharField(max_length=120, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Host',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('direccion', models.IPAddressField(unique=True)),
                ('nombre', models.CharField(max_length=30, blank=True)),
                ('descripcion', models.CharField(max_length=150, blank=True)),
                ('ubicacion', models.CharField(max_length=150, blank=True)),
                ('uptime', models.IntegerField(help_text=b'minutos', blank=True)),
                ('servicios', models.IntegerField(blank=True)),
                ('procesos', models.IntegerField(blank=True)),
                ('alarma_discos', models.BooleanField(default=False)),
                ('alarma_procesos', models.BooleanField(default=False)),
                ('alarma_procesador', models.BooleanField(default=False)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='InterfaceEvent',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('uptime', models.IntegerField(help_text=b'minutos', blank=True)),
                ('tipo', models.CharField(help_text=b'Tipo de evento; linkup, linkdown', max_length=20)),
                ('nombre', models.CharField(max_length=30)),
                ('estado_operacional', models.CharField(max_length=30)),
                ('estado_administrativo', models.CharField(max_length=30)),
                ('host', models.ForeignKey(to='gestion_red.Host')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='generalevent',
            name='host',
            field=models.ForeignKey(to='gestion_red.Host'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='bootevent',
            name='host',
            field=models.ForeignKey(to='gestion_red.Host'),
            preserve_default=True,
        ),
    ]
