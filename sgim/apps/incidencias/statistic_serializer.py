__author__ = 'edx'
from rest_framework import serializers
from .models import Incidencia, Cambio, ActividadCambio, ActividadIncidencia

class Statistics(object):

    def __init__(self, pos="", total=0, pos2=0):
        self.campo1 = pos
        self.total2 = pos2
        self.total = total

class StatisticSerializer(serializers.Serializer):
    campo1 = serializers.CharField(max_length=50)
    total2 = serializers.IntegerField(default=0)
    total = serializers.IntegerField(default=0)