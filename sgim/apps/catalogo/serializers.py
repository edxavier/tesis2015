__author__ = 'edx'

from .models import (TipoDispositivo, Edificio, Oficina,
                     EstadoOperacional, Sistema, TipoComponente,
                     Personal, TipoIncidente, Cargo, EstadoMantenimiento, )
from rest_framework import serializers


class TipoDispSerializer(serializers.ModelSerializer):
    text = serializers.ReadOnlyField(source='nombre')

    class Meta:
        model = TipoDispositivo
        fields = ('id',  'text')


class EdificioSerializer(serializers.ModelSerializer):
    text = serializers.ReadOnlyField(source='nombre')

    class Meta:
        model = Edificio
        fields = ('id',  'text')


class OficinaSerializer(serializers.ModelSerializer):
    text = serializers.ReadOnlyField(source='nombre')

    class Meta:
        model = Oficina
        fields = ('id',  'text')

class SistemaSerializer(serializers.ModelSerializer):
    text = serializers.ReadOnlyField(source='nombre')

    class Meta:
        model = Sistema
        fields = ('id',  'text')


class EstadoOpeSerializer(serializers.ModelSerializer):
    text = serializers.ReadOnlyField(source='nombre')

    class Meta:
        model = EstadoOperacional
        fields = ('id',  'text')


class TipoComponenteSerializer(serializers.ModelSerializer):

    class Meta:
        model = EstadoOperacional
        fields = ('id', 'nombre')


class PersonalSerializer(serializers.ModelSerializer):

    class Meta:
        model = Personal


class TipoIncidenteSerializer(serializers.ModelSerializer):

    class Meta:
        model = TipoIncidente


class CargoSerializer(serializers.ModelSerializer):

    class Meta:
        model = Cargo


class EstadoManttoSerializer(serializers.ModelSerializer):

    class Meta:
        model = EstadoMantenimiento