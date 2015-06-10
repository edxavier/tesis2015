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
import django_filters

class MemoryFilter(django_filters.FilterSet):
    min_date = django_filters.DateFilter(name="created", lookup_type='gte')
    max_date = django_filters.DateFilter(name="created", lookup_type='lte')

    class Meta:
        model = MemoryHistory
        fields = ['host', 'min_date', 'max_date']

class LoadFilter(django_filters.FilterSet):
    min_date = django_filters.DateFilter(name="created", lookup_type='gte')
    max_date = django_filters.DateFilter(name="created", lookup_type='lte')

    class Meta:
        model = LoadAvgHistory
        fields = ['host', 'min_date', 'max_date']

class HostViewSet(viewsets.ModelViewSet):
    #permission_classes = (permissions.IsAuthenticatedOrReadOnly,)
    queryset = Host.objects.all().order_by('-direccion')
    serializer_class = HostSerializer

class BootViewSet(viewsets.ModelViewSet):

    queryset = BootEvent.objects.all().order_by('-id')
    serializer_class = BootEventSerializer
    filter_fields = ('host',)

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(BootEvent.objects.all().order_by('-fecha'))[:200]
        serializer = BootEventSerializer(queryset, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        obj = self.get_object()
        serializer = BootEventSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)



class DevicesViewSet(viewsets.ModelViewSet):

    queryset = Device.objects.all().order_by('-id')
    serializer_class = DeviceSerializer
    filter_fields = ('host',)


class GeneralEventViewSet(UpdateModelMixin, RetrieveModelMixin, viewsets.GenericViewSet):

    queryset = GeneralEvent.objects.all().order_by('-fecha')
    serializer_class = GeneralEventSerializer
    filter_fields = ('host',)

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(GeneralEvent.objects.all().order_by('-fecha'))[:200]
        serializer = GeneralEventSerializer(queryset, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        obj = self.get_object()
        serializer = GeneralEventSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)



class StorageViewSet(viewsets.ModelViewSet):

    queryset = Storage.objects.all().order_by('-id')
    serializer_class = StorageSerializer
    filter_fields = ('host',)

class ProcessViewSet(viewsets.ModelViewSet):

    queryset = Process.objects.all().order_by('-id')
    serializer_class = ProcessSerializer
    filter_fields = ('host',)

class MemoryViewSet(viewsets.ModelViewSet):

    queryset = MemoryHistory.objects.all().order_by('-created')
    serializer_class = MemorySerializer
    filter_class = MemoryFilter


class LoadViewSet(viewsets.ModelViewSet):

    queryset = LoadAvgHistory.objects.all().order_by('-created')
    serializer_class = LoadSerializer
    filter_class = LoadFilter


class DiskViewSet(viewsets.ModelViewSet):

    queryset = DiskHistory.objects.all().order_by('-id')
    serializer_class = DiscSerializer
    filter_fields = ('host',)

class MemoryEntryViewSet(viewsets.ViewSet):
    queryset = MemoryHistory.objects.all()

    def list(self, request):
        host = request.query_params.get('host', None)
        limit = request.query_params.get('limit', None)
        if host:
            queryset = MemoryHistory.objects.filter(host_id=host).order_by('-id')[:1]
            serializer = MemorySerializer(queryset, many=True)
        else:
            queryset = MemoryHistory.objects.all().order_by('-id')[:10]
            serializer = MemorySerializer(queryset, many=True)
        return Response(serializer.data)

class LoadEntryViewSet(viewsets.ViewSet):
    queryset = LoadAvgHistory.objects.all()

    def list(self, request):
        host = request.query_params.get('host', None)
        if host:
            queryset = LoadAvgHistory.objects.filter(host_id=host).order_by('-id')[:1]
            serializer = LoadSerializer(queryset, many=True)
        else:
            queryset = LoadAvgHistory.objects.all().order_by('-id')[:10]
            serializer = LoadSerializer(queryset, many=True)
        return Response(serializer.data)