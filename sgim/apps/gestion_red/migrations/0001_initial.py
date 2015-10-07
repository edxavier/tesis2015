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
                ('fecha', models.DateTimeField(auto_now_add=True, db_index=True)),
                ('leido', models.BooleanField(default=False)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Device',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('index', models.IntegerField(default=0)),
                ('type', models.CharField(max_length=30)),
                ('description', models.CharField(max_length=300)),
                ('status', models.CharField(max_length=100)),
                ('errors', models.IntegerField(default=0)),
                ('created', models.DateTimeField(auto_now=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='DiskHistory',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('path', models.CharField(max_length=20)),
                ('device', models.CharField(max_length=300)),
                ('min_free', models.IntegerField(default=15)),
                ('size', models.IntegerField(default=0)),
                ('used', models.IntegerField(default=0)),
                ('percent_used', models.IntegerField(default=0)),
                ('flag', models.BooleanField(default=False)),
                ('msg', models.CharField(max_length=200)),
                ('created', models.DateTimeField(auto_now=True)),
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
                ('leido', models.BooleanField(default=False)),
                ('fecha', models.DateTimeField(auto_now_add=True, db_index=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Host',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('direccion', models.IPAddressField(unique=True, db_index=True)),
                ('nombre', models.CharField(max_length=30, blank=True)),
                ('descripcion', models.CharField(max_length=150, blank=True)),
                ('ubicacion', models.CharField(max_length=150, blank=True)),
                ('uptime', models.IntegerField(default=0, help_text=b'minutos', blank=True)),
                ('servicios', models.IntegerField(default=0, blank=True)),
                ('procesos', models.IntegerField(default=0, blank=True)),
                ('usuarios', models.IntegerField(default=0, blank=True)),
                ('alarma_discos', models.BooleanField(default=False)),
                ('alarma_procesos', models.BooleanField(default=False)),
                ('alarma_procesador', models.BooleanField(default=False)),
                ('alarma_memoria', models.BooleanField(default=False)),
                ('esta_conectado', models.BooleanField(default=True)),
                ('fecha', models.DateTimeField(auto_now_add=True)),
                ('actualizado', models.DateTimeField(auto_now=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='InterfaceEvent',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('uptime', models.IntegerField(default=0, help_text=b'minutos', blank=True)),
                ('tipo', models.CharField(help_text=b'Tipo de evento; linkup, linkdown', max_length=20)),
                ('nombre', models.CharField(max_length=30)),
                ('estado_operacional', models.CharField(max_length=30)),
                ('estado_administrativo', models.CharField(max_length=30)),
                ('leido', models.BooleanField(default=False)),
                ('fecha', models.DateTimeField(auto_now_add=True)),
                ('host', models.ForeignKey(to='gestion_red.Host')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='LoadAvgHistory',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('load1', models.FloatField(default=0)),
                ('load5', models.FloatField(default=0)),
                ('load15', models.FloatField(default=0)),
                ('threshold1', models.FloatField(default=0)),
                ('threshold5', models.FloatField(default=0)),
                ('threshold15', models.FloatField(default=0)),
                ('flag1', models.BooleanField(default=False)),
                ('flag5', models.BooleanField(default=False)),
                ('flag15', models.BooleanField(default=False)),
                ('msg1', models.CharField(max_length=70)),
                ('msg5', models.CharField(max_length=70)),
                ('msg15', models.CharField(max_length=70)),
                ('created', models.DateTimeField(auto_now=True)),
                ('host', models.ForeignKey(to='gestion_red.Host')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='MemoryHistory',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('total_swap', models.IntegerField(default=0)),
                ('total_ram', models.IntegerField(default=0)),
                ('free_swap', models.IntegerField(default=0)),
                ('free_ram', models.IntegerField(default=0)),
                ('created', models.DateTimeField(auto_now=True)),
                ('host', models.ForeignKey(to='gestion_red.Host')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='NotificationEvent',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('description', models.CharField(max_length=200)),
                ('fecha', models.DateTimeField(auto_now_add=True, db_index=True)),
                ('leido', models.BooleanField(default=False)),
                ('host', models.ForeignKey(to='gestion_red.Host')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Process',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('index', models.IntegerField(default=0)),
                ('name', models.CharField(max_length=300)),
                ('min', models.IntegerField(default=0)),
                ('max', models.IntegerField(default=0)),
                ('count', models.IntegerField(default=0)),
                ('flag', models.BooleanField(default=False)),
                ('msg', models.CharField(max_length=100)),
                ('created', models.DateTimeField(auto_now=True)),
                ('host', models.ForeignKey(to='gestion_red.Host')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Storage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('index', models.IntegerField(default=0)),
                ('type', models.CharField(max_length=30)),
                ('description', models.CharField(max_length=50)),
                ('size', models.IntegerField(default=0)),
                ('used', models.IntegerField(default=0)),
                ('percent_used', models.IntegerField(default=0)),
                ('allocation_failures', models.IntegerField(default=0)),
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
            model_name='diskhistory',
            name='host',
            field=models.ForeignKey(to='gestion_red.Host'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='device',
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
