__author__ = 'edx'

from rest_framework import viewsets
from .serializers import *
from .models import Incidencia, Cambio
import django_filters



class IncidenciatFilter(django_filters.FilterSet):
    min_date = django_filters.DateFilter(name="creado", lookup_type='gte')
    max_date = django_filters.DateFilter(name="creado", lookup_type='lte')
    class Meta:
        model = Incidencia
        fields = ['dispositivo', 'min_date', 'max_date']

class IncidenciaViewSet(viewsets.ModelViewSet):

    queryset = Incidencia.objects.all().order_by('-id')
    serializer_class = IncidenciaSerializer
    filter_class = IncidenciatFilter
    #filter_fields = ('dispositivo','creado')


class CambioViewSet(viewsets.ModelViewSet):

    queryset = Cambio.objects.all()
    serializer_class = CambioSerializer

