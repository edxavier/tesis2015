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
    permission_classes = (permissions.IsAuthenticatedOrReadOnly,)
    queryset = Host.objects.all().order_by('-id')
    serializer_class = HostSerializer

class BootViewSet(viewsets.ModelViewSet):

    queryset = BootEvent.objects.all().order_by('-id')
    serializer_class = BootEventSerializer
    filter_fields = ('host',)



class InterfaceViewSet(viewsets.ModelViewSet):

    queryset = InterfaceEvent.objects.all().order_by('-id')
    serializer_class = InterfaceEventSerializer
    filter_fields = ('host',)


class GeneralEventViewSet(viewsets.ModelViewSet):

    queryset = GeneralEvent.objects.all().order_by('-id')
    serializer_class = GeneralEventSerializer
    filter_fields = ('host',)