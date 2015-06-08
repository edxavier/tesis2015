from django.shortcuts import get_object_or_404
from rest_framework import status
from rest_framework.response import Response
from rest_framework.permissions import DjangoModelPermissions, BasePermission
from rest_framework.mixins import UpdateModelMixin, RetrieveModelMixin
from apps.inicio.utils import enviarSMS, enviarEmail
from apps.cuentas.models import Usuario

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


class UsuarioViewSet(viewsets.ModelViewSet):

    queryset = Usuario.objects.filter(is_active=True)
    serializer_class = UsuarioSerializer
    filter_fields = ('funcion',)


class TareaViewSet(viewsets.ModelViewSet):

    queryset = Tarea.objects.filter(activo=True)
    serializer_class = TareaSerializer
    filter_fields = ('rutina',)

    def create(self, request, *args, **kwargs):
        data = request.DATA
        rutina = get_object_or_404(Rutina, id=data['rutina'])
        tarea = Tarea.objects.create(rutina=rutina, nombre=data['nombre'],
                                    valor_ref=data['valor_ref'],creador = request.user)
        serial = TareaSerializer(tarea)
        print(serial.data)
        return Response(serial.data)



class RutinaViewSet(viewsets.ModelViewSet):

    queryset = Rutina.objects.filter(activo=True)
    serializer_class = RutinaSerializer


class BoletaViewSet(viewsets.ModelViewSet):

    queryset = BoletaTrabajo.objects.filter(activo=True)
    serializer_class = BoletaSerializer

class PlanViewSet(DjangoModelPermissions, UpdateModelMixin, RetrieveModelMixin, viewsets.GenericViewSet):
    queryset = Programacion.objects.filter(activo=True)
    serializer_class = PlanSerializer
    filter_fields = ('estado', 'rutina__sistema')
    permission_classes = (PermsPlanMantto, )


    def list(self, request, *args, **kwargs):
        #filtrar queryset con los campos especificados en filter_fields
        planes = self.filter_queryset(Programacion.objects.filter(activo=True).order_by('-creado'))
        serializer = PlanSerializer(planes, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        """Obtener el bjeto por el id en la url con el metodo get_object o enviar
         el id en los datos con reques.DATA"""
        obj = self.get_object()
        if request.DATA['estado'] == "4":
            obj.finalizado_por = request.user
        elif request.DATA['estado'] == "2":
            obj.iniciado_por = request.user
        serializer = PlanSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            if request.DATA['estado'] == "4":
                author = request.user.get_full_name() + " (" + request.user.username + ")"
                toList = [obj.creador.email]
                msg = "<h2>"+obj.rutina.titulo+"</h2>"
                msg = msg + "<p>Por este medio se le notifica que se da por finalizado la rutina: [" + obj.rutina.titulo
                msg = msg + "], iniciado el "+obj.inicio.strftime('%d-%m-%Y')+\
                " finalizando el dia de hoy </p><p>Responsable: "+obj.responsable.nombre_completo+"</p>" \
                "<p>Att: "+author+"</p>"
                enviarEmail(obj.rutina.titulo, toList, msg, 'mantto')
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
