from rest_framework import status
from rest_framework.response import Response
from rest_framework.permissions import DjangoModelPermissions, BasePermission
from rest_framework.mixins import UpdateModelMixin, RetrieveModelMixin

__author__ = 'edx'

from rest_framework import viewsets
from .serializers import *
from .models import Tarea, Rutina, Programacion


class PermsPlanMantto(BasePermission):
    def has_permission(self, request, view):
        if request.method == "GET":
            return True
        if request.method == "PUT":
            operacion = request.DATA["estado"]
            if operacion == 5:
                return request.user.has_perm('mantenimiento.cancelar_mantto')
            else:
                return request.user.has_perm('mantenimiento.iniciar_finalizar_mantto')


class TareaViewSet(viewsets.ModelViewSet):

    queryset = Tarea.objects.all()
    serializer_class = TareaSerializer


class RutinaViewSet(viewsets.ModelViewSet):

    queryset = Rutina.objects.all()
    serializer_class = RutinaSerializer


class BoletaViewSet(viewsets.ModelViewSet):

    queryset = BoletaTrabajo.objects.all()
    serializer_class = BoletaSerializer

class PlanViewSet(DjangoModelPermissions, UpdateModelMixin, RetrieveModelMixin, viewsets.GenericViewSet):
    queryset = Programacion.objects.all()
    serializer_class = PlanSerializer
    filter_fields = ('estado', 'rutina__sistema')
    permission_classes = (PermsPlanMantto, )


    def list(self, request, *args, **kwargs):
        #filtrar queryset con los campos especificados en filter_fields
        planes = self.filter_queryset(Programacion.objects.all().order_by('-creado'))
        serializer = PlanSerializer(planes, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        """Obtener el bjeto por el id en la url con el metodo get_object o enviar
         el id en los datos con reques.DATA"""
        obj = self.get_object()
        serializer = PlanSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
