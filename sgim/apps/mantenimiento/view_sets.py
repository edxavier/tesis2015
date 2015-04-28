__author__ = 'edx'

from rest_framework import viewsets
from .serializers import *
from .models import Tarea, Rutina, Programacion


class TareaViewSet(viewsets.ModelViewSet):

    queryset = Tarea.objects.all()
    serializer_class = TareaSerializer


class RutinaViewSet(viewsets.ModelViewSet):

    queryset = Rutina.objects.all()
    serializer_class = RutinaSerializer


class PlanViewSet(viewsets.ModelViewSet):

    queryset = Programacion.objects.all()
    serializer_class = PlanSerializer
    filter_fields = ('estado',)