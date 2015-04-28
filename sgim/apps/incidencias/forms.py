__author__ = 'edx'
from django import forms
from .models import Incidencia


class IncidenciaForm(forms.ModelForm):

    class Meta:
        model = Incidencia
        exclude = ('creador', )
