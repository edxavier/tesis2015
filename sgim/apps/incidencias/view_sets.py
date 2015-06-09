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
    min_estado = django_filters.NumberFilter(name="estado", lookup_type='gte')

    class Meta:
        model = Incidencia
        fields = ['dispositivo', 'min_date', 'max_date',  'min_estado', 'estado']

class PermsIncidencia(BasePermission):
    def has_permission(self, request, view):
        if request.method == "GET":
            return True
        if request.method == "PUT":
            return request.user.has_perm('incidencias.change_incidencia')



class IncidenciaViewSet(DjangoModelPermissions, UpdateModelMixin, RetrieveModelMixin, viewsets.GenericViewSet):

    queryset = Incidencia.objects.filter(activo=True).order_by('-id')
    serializer_class = IncidenciaSerializer
    filter_class = IncidenciaFilter
    permission_classes = (PermsIncidencia,)

    def list(self, *args, **kwargs):
        inc = self.filter_queryset(Incidencia.objects.filter(activo=True).order_by('-creado'))
        serializer = IncidenciaSerializer(inc, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        obj = self.get_object()
        obj.solucion = obj.solucion + "<p>"+request.DATA["desc"] +\
                       "<br>[<i>"+request.user.username+"-"+time.strftime("%d/%m/%Y")+"</i>]</p>"
        obj.cerrado_por = request.user
        serializer = IncidenciaSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        pass


class CambioViewSet(DjangoModelPermissions, UpdateModelMixin, RetrieveModelMixin, viewsets.GenericViewSet):

    queryset = Cambio.objects.filter(activo=True)
    serializer_class = CambioSerializer
    filter_fields = ('estado_id',)

    def list(self, request, *args, **kwargs):
        #filtrar queryset con los campos especificados en filter_fields
        cambios = self.filter_queryset(Cambio.objects.filter(activo=True).order_by('-creado'))
        serializer = CambioSerializer(cambios, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        """Obtener el bjeto por el id en la url con el metodo get_object o enviar
         el id en los datos con reques.DATA"""
        obj = self.get_object()
        print(obj.estado)
        print(request.DATA)
        serializer = CambioSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
