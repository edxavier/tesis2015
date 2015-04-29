__author__ = 'edx'
from django import forms
from .models import Incidencia, ActividadIncidencia, Cambio, ActividadCambio


class IncidenciaForm(forms.ModelForm):

    class Meta:
        model = Incidencia
        exclude = ('creador', )

class ActivIncidenciaForm(forms.ModelForm):

    class Meta:
        model = ActividadIncidencia
        exclude = ('creador', )

class CambioForm(forms.ModelForm):

    class Meta:
        model = Cambio
        exclude = ('creador', )


class ActivCambioForm(forms.ModelForm):

    class Meta:
        model = ActividadCambio
        exclude = ('creador', )