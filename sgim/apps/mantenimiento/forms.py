# coding=utf-8
from django import forms
from .models import Tarea, Rutina, Programacion, BoletaTrabajo


class TareaForm(forms.ModelForm):
    nombre = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombre',
                                                           'class': 'form-control floating-label', 'required': True}))
    meteriales = forms.CharField(widget=forms.Textarea(attrs={'placeholder': 'Herramientas o Materiales','rows':'4',
                                                              'class': 'form-control floating-label'}), initial='N/A')
    minutos = forms.CharField(widget=forms.NumberInput(attrs={'placeholder': 'Duracion (min)', 'min':'0',
                                                              'class': 'form-control floating-label'}))
    class Meta:
        model = Tarea
        exclude = ('creador', 'tipo_dispositivos',)


class RutinaForm(forms.ModelForm):
    titulo = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Titulo de la rutina',
                                                           'class': 'form-control ', 'required': True}))

    recomendacion = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Recomendacion a tener en cuenta',
                                                           'class': 'form-control ', 'required': True}))

    class Meta:
        model = Rutina
        exclude = ('creador', 'tareas')


class ProgramacionForm(forms.ModelForm):

    class Meta:
        model = Programacion
        exclude = ('creador', 'personal', 'estado')


class BoletaForm(forms.ModelForm):

    class Meta:
        model = BoletaTrabajo
        exclude = ('creador', )

