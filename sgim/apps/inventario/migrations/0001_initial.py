# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('catalogo', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Componente',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('marca', models.CharField(max_length=30)),
                ('modelo', models.CharField(max_length=30, blank=True)),
                ('serie', models.CharField(unique=True, max_length=30, verbose_name=b'Num. de Serie')),
                ('inventario', models.CharField(max_length=30, unique=True, null=True, verbose_name=b'Num.  de Inventario', blank=True)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('estado', models.ForeignKey(to='catalogo.EstadoOperacional')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Dispositivo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('marca', models.CharField(max_length=30)),
                ('modelo', models.CharField(max_length=30, blank=True)),
                ('serie', models.CharField(unique=True, max_length=30, verbose_name=b'Num. de Serie')),
                ('inventario', models.CharField(max_length=30, unique=True, null=True, verbose_name=b'Num.  de Inventario', blank=True)),
                ('posicion_logica', models.CharField(max_length=50)),
                ('instalacion', models.DateField(help_text=b'Fecha de puesta en marcha')),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('edificio', models.ForeignKey(to='catalogo.Edificio')),
                ('estado', models.ForeignKey(to='catalogo.EstadoOperacional')),
                ('oficina', models.ForeignKey(to='catalogo.Oficina')),
                ('sistema', models.ForeignKey(to='catalogo.Sistema')),
                ('tipo', models.ForeignKey(to='catalogo.TipoDispositivo')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Servicio',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('nombre', models.CharField(unique=True, max_length=50)),
                ('descripcion', models.CharField(max_length=150, null=True, blank=True)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('tipo', models.ForeignKey(to='catalogo.TipoServicio')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='SubSistema',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('nombre', models.CharField(unique=True, max_length=50)),
                ('descripcion', models.CharField(unique=True, max_length=150)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('sistema', models.ForeignKey(to='catalogo.Sistema')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='componente',
            name='instalado_en',
            field=models.ForeignKey(to='inventario.Dispositivo'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='componente',
            name='tipo',
            field=models.ForeignKey(to='catalogo.TipoComponente'),
            preserve_default=True,
        ),
    ]
