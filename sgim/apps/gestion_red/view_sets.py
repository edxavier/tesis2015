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

class HostViewSet(viewsets.ModelViewSet):

    queryset = Host.objects.all()
    serializer_class = HostSerializer

class BootViewSet(viewsets.ModelViewSet):

    queryset = BootEvent.objects.all()
    serializer_class = BootEventSerializer



class InterfaceViewSet(viewsets.ModelViewSet):

    queryset = InterfaceEvent.objects.all()
    serializer_class = InterfaceEventSerializer


class GeneralEventViewSet(viewsets.ModelViewSet):

    queryset = GeneralEvent.objects.all()
    serializer_class = GeneralEventSerializer