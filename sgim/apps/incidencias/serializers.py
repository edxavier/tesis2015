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
    severidad = serializers.ReadOnlyField(source='severidad.nombre')
    estado_str = serializers.ReadOnlyField(source='estado.nombre')

    class Meta:
        model = Incidencia


class CambioSerializer(serializers.ModelSerializer):
    estado_titulo = serializers.ReadOnlyField(source='estado.nombre')
    nombre_solic = serializers.ReadOnlyField(source='solicitante.nombre_completo')
    nombre_resp = serializers.ReadOnlyField(source='responsable.nombre_completo')
    creador = serializers.ReadOnlyField(source='creador.username')

    def validate(self, attrs):
        value = attrs['estado']
        count = ActividadCambio.objects.filter(cambio_id=self.instance.pk)
        if len(count) <= 0 and value.id == 3:
            raise serializers.ValidationError("Debe ingresar al menos una actividad asociada al cambio, "
                                              "de lo contrario solicite al administrador que cancele la entrada")
        return attrs


    class Meta:
        model = Cambio


class ActividadIncidenciaSerializer(serializers.ModelSerializer):

    class Meta:
        model = ActividadIncidencia


class ActividadCambioSerializer(serializers.ModelSerializer):

    class Meta:
        model = ActividadCambio