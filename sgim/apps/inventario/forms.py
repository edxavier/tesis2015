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
    nombre = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombre',
                                                           'class': 'form-control floating-label', 'required': 'True'}))
    descripcion = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Descripcion',
                                                           'class': 'form-control floating-label'}))

    class Meta:
        model = Servicio
        exclude = ('creador',)


class ComponenteForm(forms.ModelForm):

    class Meta:
        model = Componente
        exclude = ('creador',)

