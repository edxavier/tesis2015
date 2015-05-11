__author__ = 'edx'
from rest_framework import serializers
from .models import Dispositivo, Componente, Servicio


class DispositivoSerializer(serializers.ModelSerializer):
    estado = serializers.ReadOnlyField(source='estado.nombre')
    sistema = serializers.ReadOnlyField(source='sistema.nombre')
    sistema_id = serializers.ReadOnlyField(source='sistema.id')
    oficina = serializers.StringRelatedField()
    tipo = serializers.StringRelatedField()
    oficina = serializers.StringRelatedField()

    class Meta:
        model = Dispositivo



class ComponenteSerializer(serializers.ModelSerializer):

    class Meta:
        model = Componente


class ServicioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Servicio