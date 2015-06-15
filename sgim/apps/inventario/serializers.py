__author__ = 'edx'
from rest_framework import serializers
from .models import Dispositivo, Componente, Servicio


class DispositivoSerializer(serializers.ModelSerializer):
    estado = serializers.ReadOnlyField(source='estado.nombre')
    sistema = serializers.ReadOnlyField(source='sistema.nombre')
    sistema_id = serializers.ReadOnlyField(source='sistema.id')
    display = serializers.ReadOnlyField(source='display_me')
    oficina = serializers.StringRelatedField()
    tipo = serializers.StringRelatedField()

    class Meta:
        model = Dispositivo
        #fields = ('id', 'tipo','display','sistema_id','sistema','estado', 'oficina')



class ComponenteSerializer(serializers.ModelSerializer):

    class Meta:
        model = Componente


class ServicioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Servicio