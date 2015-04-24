# coding=utf-8
from django import forms
from django.contrib import admin
from django.contrib.auth.models import Group
from django.contrib.auth.forms import PasswordChangeForm

from django.contrib.auth.forms import ReadOnlyPasswordHashField

from .models import Dispositivo, Servicio, Componente


class DispositivoForm(forms.ModelForm):

    class Meta:
        model = Dispositivo
        exclude = ('creador',)


class ServicioForm(forms.ModelForm):

    class Meta:
        model = Servicio
        exclude = ('creador',)


class ComponenteForm(forms.ModelForm):

    class Meta:
        model = Componente
        exclude = ('creador',)

