__author__ = 'edx'
from rest_framework import serializers
from .models import *

class HostSerializer(serializers.ModelSerializer):
    format_uptime = serializers.ReadOnlyField(source='get_duration')

    class Meta:
        model = Host


class BootEventSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')
    format_uptime = serializers.ReadOnlyField(source='get_duration')

    class Meta:
        model = BootEvent


class InterfaceEventSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')
    format_uptime = serializers.ReadOnlyField(source='get_duration')

    class Meta:
        model = InterfaceEvent


class GeneralEventSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')
    format_uptime = serializers.ReadOnlyField(source='get_duration')

    class Meta:
        model = GeneralEvent