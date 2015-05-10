from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.mixins import UpdateModelMixin, RetrieveModelMixin

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

"""
class PlanViewSet(viewsets.ModelViewSet):

    queryset = Programacion.objects.all()
    serializer_class = PlanSerializer
    filter_fields = ('estado',)

"""


class PlanViewSet(UpdateModelMixin, RetrieveModelMixin, viewsets.GenericViewSet):
    queryset = Programacion.objects.all()
    serializer_class = PlanSerializer
    filter_fields = ('estado',)

    def list(self, request, *args, **kwargs):
        #filtrar queryset con los campos especificados en filter_fields
        planes = self.filter_queryset(Programacion.objects.all().order_by('-creado'))
        serializer = PlanSerializer(planes, many=True)
        return Response(serializer.data)

    def update(self, request, *args, **kwargs):
        """Obtener el bjeto por el id en la url con el metodo get_object o enviar
         el id en los datos con reques.DATA"""
        obj = self.get_object()
        print(obj)
        serializer = PlanSerializer(obj, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)







@api_view(['GET', 'PUT'])
def plan_detail(request, pk):
    """
    Get, udpate, or delete a specific task
    """
    try:
        task = Programacion.objects.get(pk=pk)
    except Programacion.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = PlanSerializer(task)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = PlanSerializer(task, data=request.DATA, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
