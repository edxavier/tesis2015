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

    class Meta:
        model = Programacion
