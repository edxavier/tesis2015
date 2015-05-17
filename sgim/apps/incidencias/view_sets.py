from rest_framework.mixins import UpdateModelMixin
from rest_framework.mixins import RetrieveModelMixin
from rest_framework.permissions import DjangoModelPermissions, BasePermission
from rest_framework import status
from rest_framework.response import Response
import time

__author__ = 'edx'

from rest_framework import viewsets
from .serializers import *
from .models import Incidencia, Cambio
import django_filters



class IncidenciaFilter(django_filters.FilterSet):
    min_date = django_filters.DateFilter(name="creado", lookup_type='gte')
    max_date = django_filters.DateFilter(name="creado", lookup_type='lte')
    class Meta:
        model = Incidencia
        fields = ['dispositivo', 'min_date', 'max_date']

class PermsIncidencia(BasePermission):
    def has_permission(self, request, view):
        if request.method == "GET":
            return True
        if request.method == "PUT":
            return request.user.has_perm('incidencias.change_incidencia')



class IncidenciaViewSet(DjangoModelPermissions, UpdateModelMixin, RetrieveModelMixin, viewsets.GenericViewSet):

    queryset = Incidencia.objects.all().order_by('-id')
    serializer_class = IncidenciaSerializer
    filter_class = IncidenciaFilter
    permission_classes = (PermsIncidencia,)

    def list(self, *args, **kwargs):
        inc = self.filter_queryset(Incidencia.objects.all().order_by('-creado'))
        serializer = IncidenciaSerializer(inc, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        obj = self.get_object()
        obj.solucion = obj.solucion + "<p>"+request.DATA["desc"] +\
                       "<br>[<i>"+request.user.username+"-"+time.strftime("%d/%m/%Y")+"<i>]</p>"
        serializer = IncidenciaSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        pass


class CambioViewSet(viewsets.ModelViewSet):

    queryset = Cambio.objects.all()
    serializer_class = CambioSerializer

