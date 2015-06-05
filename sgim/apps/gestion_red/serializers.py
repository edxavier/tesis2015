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


class StorageSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')

    class Meta:
        model = Storage

class DeviceSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')

    class Meta:
        model = Device

class ProcessSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')

    class Meta:
        model = Process

class MemorySerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')
    percent_ram_used = serializers.ReadOnlyField(source='percent_used')
    humanise_date = serializers.ReadOnlyField(source='get_formated_date')

    class Meta:
        model = MemoryHistory

class LoadSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')
    humanise_date = serializers.ReadOnlyField(source='get_formated_date')

    class Meta:
        model = LoadAvgHistory

class DiscSerializer(serializers.ModelSerializer):
    direccion = serializers.ReadOnlyField(source='host.direccion')
    humanise_date = serializers.ReadOnlyField(source='get_formated_date')

    class Meta:
        model = DiskHistory