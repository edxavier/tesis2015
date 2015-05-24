__author__ = 'edx'
from rest_framework import serializers
from .models import *


class HostSerializer(serializers.ModelSerializer):

    class Meta:
        model = Host


class BootEventSerializer(serializers.ModelSerializer):

    class Meta:
        model = BootEvent


class InterfaceEventSerializer(serializers.ModelSerializer):

    class Meta:
        model = InterfaceEvent


class GeneralEventSerializer(serializers.ModelSerializer):

    class Meta:
        model = GeneralEvent