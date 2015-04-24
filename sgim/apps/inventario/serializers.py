__author__ = 'edx'
from rest_framework import serializers
from .models import Dispositivo, Componente, Servicio


class DispositivoSerializer(serializers.ModelSerializer):

    class Meta:
        model = Dispositivo


class ComponenteSerializer(serializers.ModelSerializer):

    class Meta:
        model = Componente


class ServicioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Servicio