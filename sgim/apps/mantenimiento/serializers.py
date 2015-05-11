from datetime import datetime

__author__ = 'edx'
from rest_framework import serializers
from .models import Tarea, Rutina, Programacion, BoletaTrabajo


class TareaSerializer(serializers.ModelSerializer):

    class Meta:
        model = Tarea


class RutinaSerializer(serializers.ModelSerializer):

    class Meta:
        model = Rutina


class PlanSerializer(serializers.ModelSerializer):
    rutina = serializers.ReadOnlyField(source='rutina.titulo')
    responsable = serializers.ReadOnlyField(source='responsable.nombre_completo')
    estado_string = serializers.ReadOnlyField(source='estado.nombre')
    plan_programado = serializers.SerializerMethodField('get_plan')
    inicio_estimado = serializers.ReadOnlyField(source='get_FIP')
    fin_estimado = serializers.ReadOnlyField(source='get_FFP')

    def get_plan(self, obj):
        fecha = obj.creado.strftime('%m/%d/%Y')
        return str(obj.pk) + " - " + obj.rutina.titulo+", Programado: "+str(fecha)

    def validate(self, attrs):
        value = attrs['estado']
        count = BoletaTrabajo.objects.filter(orden_id=self.instance.pk)
        if len(count) <= 0 and value.id == 4:
            raise serializers.ValidationError("Debe ingresar al menos una boleta de trabajo asociada")
        return attrs

    class Meta:
        model = Programacion


class BoletaSerializer(serializers.ModelSerializer):
    dispositivo = serializers.ReadOnlyField(source='dispositivo.posicion_logica')
    serie = serializers.ReadOnlyField(source='dispositivo.serie')
    creador = serializers.ReadOnlyField(source='creador.username')
    estado_final = serializers.ReadOnlyField(source='estado_final.nombre')
    class Meta:
        model = BoletaTrabajo