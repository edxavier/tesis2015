# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(default=django.utils.timezone.now, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(unique=True, max_length=50, verbose_name=b'Usuario')),
                ('firstname', models.CharField(max_length=50, verbose_name=b'Nombres', blank=True)),
                ('lastname', models.CharField(max_length=50, verbose_name=b'Apellidos', blank=True)),
                ('email', models.EmailField(max_length=75, blank=True)),
                ('imagen', models.ImageField(default=b'cuentas/img/default.png', upload_to=b'cuentas/img', blank=True)),
                ('is_active', models.BooleanField(default=True, verbose_name=b'Esta Activo')),
                ('is_staff', models.BooleanField(default=False, help_text=b'Indica si el usuario puede acceder al panel de administracion', verbose_name=b'Es Administrador')),
                ('telefono', models.CharField(max_length=15, blank=True)),
                ('groups', models.ManyToManyField(related_query_name='user', related_name='user_set', to='auth.Group', blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of his/her group.', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(related_query_name='user', related_name='user_set', to='auth.Permission', blank=True, help_text='Specific permissions for this user.', verbose_name='user permissions')),
            ],
            options={
                'abstract': False,
            },
            bases=(models.Model,),
        ),
    ]
