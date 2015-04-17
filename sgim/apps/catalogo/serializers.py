__author__ = 'edx'

from .models import TipoDispositivo, Edificio, Oficina, EstadoOperacional
from rest_framework import serializers


class TipoDispSerializer(serializers.ModelSerializer):
    text = serializers.ReadOnlyField(source='nombre')

    class Meta:
        model = TipoDispositivo
        fields = ('id',  'text')
