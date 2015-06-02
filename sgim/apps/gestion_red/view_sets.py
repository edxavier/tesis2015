from rest_framework.mixins import UpdateModelMixin
from rest_framework.mixins import RetrieveModelMixin
from rest_framework.permissions import DjangoModelPermissions, BasePermission
from rest_framework import status
from rest_framework.response import Response
import time

__author__ = 'edx'

from rest_framework import viewsets
from .serializers import *
from .models import *
from rest_framework import permissions

class HostViewSet(viewsets.ModelViewSet):
    #permission_classes = (permissions.IsAuthenticatedOrReadOnly,)
    queryset = Host.objects.all().order_by('direccion')
    serializer_class = HostSerializer

class BootViewSet(viewsets.ModelViewSet):

    queryset = BootEvent.objects.all().order_by('-id')
    serializer_class = BootEventSerializer
    filter_fields = ('host',)



class DevicesViewSet(viewsets.ModelViewSet):

    queryset = Device.objects.all().order_by('-id')
    serializer_class = DeviceSerializer
    filter_fields = ('host',)


class GeneralEventViewSet(viewsets.ModelViewSet):

    queryset = GeneralEvent.objects.all().order_by('-id')
    serializer_class = GeneralEventSerializer
    filter_fields = ('host',)


class StorageViewSet(viewsets.ModelViewSet):

    queryset = Storage.objects.all().order_by('-id')
    serializer_class = StorageSerializer
    filter_fields = ('host',)

class ProcessViewSet(viewsets.ModelViewSet):

    queryset = Process.objects.all().order_by('-id')
    serializer_class = ProcessSerializer
    filter_fields = ('host',)

class MemoryViewSet(viewsets.ModelViewSet):

    queryset = MemoryHistory.objects.all().order_by('-id')
    serializer_class = MemorySerializer
    filter_fields = ('host',)

class LoadViewSet(viewsets.ModelViewSet):

    queryset = LoadAvgHistory.objects.all().order_by('-id')
    serializer_class = LoadSerializer
    filter_fields = ('host',)


class DiskViewSet(viewsets.ModelViewSet):

    queryset = DiskHistory.objects.all().order_by('-id')
    serializer_class = DiscSerializer
    filter_fields = ('host',)