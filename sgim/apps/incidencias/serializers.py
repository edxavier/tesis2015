__author__ = 'edx'
from rest_framework import serializers
from .models import Incidencia, Cambio, ActividadCambio, ActividadIncidencia


class IncidenciaSerializer(serializers.ModelSerializer):
    dispositivo = serializers.ReadOnlyField(source='dispositivo.posicion_logica')
    serie = serializers.ReadOnlyField(source='dispositivo.serie')
    creador = serializers.ReadOnlyField(source='creador.username')
    reporta = serializers.ReadOnlyField(source='reporta.nombre_completo')
    creador = serializers.ReadOnlyField(source='creador.username')
    tipo = serializers.ReadOnlyField(source='tipo.nombre')

    class Meta:
        model = Incidencia


class CambioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Cambio


class ActividadIncidenciaSerializer(serializers.ModelSerializer):

    class Meta:
        model = ActividadIncidencia


class ActividadCambioSerializer(serializers.ModelSerializer):

    class Meta:
        model = ActividadCambio