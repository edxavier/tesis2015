__author__ = 'edx'
from django import forms
from .models import *

class HostForm(forms.ModelForm):

    class Meta:
        model = Host

class BootEventForm(forms.ModelForm):

    class Meta:
        model = BootEvent
        exclude = ('host',)

class InterfaceEventForm(forms.ModelForm):

    class Meta:
        model = InterfaceEvent
        exclude = ('host',)


class GeneralEventForm(forms.ModelForm):

    class Meta:
        model = GeneralEvent
        exclude = ('host',)

