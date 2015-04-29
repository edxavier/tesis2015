__author__ = 'edx'
from rest_framework import serializers
from .models import Incidencia, Cambio, ActividadCambio, ActividadIncidencia


class IncidenciaSerializer(serializers.ModelSerializer):

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