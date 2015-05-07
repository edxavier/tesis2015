from datetime import datetime

__author__ = 'edx'
from rest_framework import serializers
from .models import Tarea, Rutina, Programacion


class TareaSerializer(serializers.ModelSerializer):

    class Meta:
        model = Tarea


class RutinaSerializer(serializers.ModelSerializer):

    class Meta:
        model = Rutina


class PlanSerializer(serializers.ModelSerializer):
    rutina = serializers.ReadOnlyField(source='rutina.titulo')
    responsable = serializers.ReadOnlyField(source='responsable.nombre_completo')
    estado = serializers.ReadOnlyField(source='estado.nombre')
    plan_programado = serializers.SerializerMethodField('get_plan')
    inicio_estimado = serializers.ReadOnlyField(source='get_FIP')
    fin_estimado = serializers.ReadOnlyField(source='get_FFP')

    def get_plan(self, obj):
        fecha = obj.creado.strftime('%m/%d/%Y')
        return str(obj.pk) + " - " + obj.rutina.titulo+", Programado: "+str(fecha)


    class Meta:
        model = Programacion
