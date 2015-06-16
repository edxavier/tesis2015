# coding=utf-8
from django import forms
from .models import Tarea, Rutina, Programacion, BoletaTrabajo


class TareaForm(forms.ModelForm):
    nombre = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombre',
                                                           'class': 'form-control floating-label', 'required': True}))
    class Meta:
        model = Tarea
        exclude = ('creador',)


class RutinaForm(forms.ModelForm):
    titulo = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Titulo de la rutina',
                                                           'class': 'form-control ', 'required': True}))
    recomendacion = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Recomendacion a tener en cuenta',
                                                           'class': 'form-control ', 'required': True}))

    class Meta:
        model = Rutina
        exclude = ('creador', )


class ProgramacionForm(forms.ModelForm):

    class Meta:
        model = Programacion
        exclude = ('creador', 'personal', 'estado')


class BoletaForm(forms.ModelForm):

    class Meta:
        model = BoletaTrabajo
        exclude = ('creador', )


