__author__ = 'edx'

from rest_framework import viewsets
from .serializers import *
from .models import Dispositivo, Componente, Servicio


class DispositivoViewSet(viewsets.ModelViewSet):

    queryset = Dispositivo.objects.filter(activo=True).order_by('-id')
    serializer_class = DispositivoSerializer


class ComponenteViewSet(viewsets.ModelViewSet):

    queryset = Componente.objects.filter(activo=True)
    serializer_class = ComponenteSerializer


class ServicioViewSet(viewsets.ModelViewSet):

    queryset = Servicio.objects.filter(activo=True)
    serializer_class = ServicioSerializer