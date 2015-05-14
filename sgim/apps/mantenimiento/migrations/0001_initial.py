# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('catalogo', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='BoletaTrabajo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('tipo', models.CharField(default=1, max_length=30, verbose_name=b'Tipo Trabajo', choices=[(b'1', b'Preventivo'), (b'2', b'Correctivo')])),
                ('descripcion', models.TextField(help_text=b'Describa brevemente el trabajo realizado')),
                ('paro_operacion', models.BooleanField(default=False, help_text=b'Marca para indicar que si se realizo un paro')),
                ('tiempo_paro', models.IntegerField(default=0, help_text=b'Minutos que dura el paro si fuese necesario')),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('dispositivo', models.ForeignKey(to='inventario.Dispositivo')),
                ('estado_final', models.ForeignKey(to='catalogo.EstadoOperacional')),
            ],
            options={
                'verbose_name_plural': 'Boletas de Trabajo',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Programacion',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('fecha_inicio_prevista', models.DateTimeField()),
                ('fecha_fin_prevista', models.DateTimeField(null=True, blank=True)),
                ('inicio', models.DateTimeField(null=True, blank=True)),
                ('fin', models.DateTimeField(null=True, blank=True)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('estado', models.ForeignKey(to='catalogo.EstadoMantenimiento')),
                ('personal', models.ManyToManyField(related_name='personal_set', to='catalogo.Personal')),
                ('responsable', models.ForeignKey(related_name='personal_set2', to='catalogo.Personal')),
            ],
            options={
                'verbose_name_plural': 'Planes de Mantto.',
                'permissions': (('iniciar_finalizar_mantto', 'Puede actualizar el estado de un plan de mantto'), ('cancelar_mantto', 'Puede cancelar un plan de mantto')),
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Rutina',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('titulo', models.CharField(max_length=100)),
                ('recomendacion', models.CharField(default=b'Ninguna', max_length=300)),
                ('duracion_estimada', models.FloatField(default=1, help_text=b'Duracion en horas', verbose_name=b'Duracion Estimada', blank=True)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('frecuencia', models.ForeignKey(to='catalogo.FrecuenciaMantto')),
                ('sistema', models.ForeignKey(to='catalogo.Sistema')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Tarea',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('activo', models.BooleanField(default=True, help_text=b'Denota si el registro esta activo')),
                ('creado', models.DateTimeField(auto_now_add=True)),
                ('modificado', models.DateTimeField(auto_now=True)),
                ('nombre', models.CharField(max_length=100)),
                ('valor_ref', models.CharField(max_length=100)),
                ('creador', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
                ('rutina', models.ForeignKey(to='mantenimiento.Rutina')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='programacion',
            name='rutina',
            field=models.ForeignKey(to='mantenimiento.Rutina'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='boletatrabajo',
            name='orden',
            field=models.ForeignKey(blank=True, to='mantenimiento.Programacion', help_text=b'Este campo es opcional', null=True),
            preserve_default=True,
        ),
    ]
