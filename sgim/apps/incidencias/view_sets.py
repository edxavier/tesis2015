__author__ = 'edx'

from rest_framework import viewsets
from .serializers import *
from .models import Incidencia, Cambio


class IncidenciaViewSet(viewsets.ModelViewSet):

    queryset = Incidencia.objects.all()
    serializer_class = IncidenciaSerializer


class CambioViewSet(viewsets.ModelViewSet):

    queryset = Cambio.objects.all()
    serializer_class = CambioSerializer

