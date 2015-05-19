from django.shortcuts import render
from django.views.generic import View
from django.http import JsonResponse
from rest_framework import viewsets
from .serializers import (TipoDispSerializer, EdificioSerializer, OficinaSerializer,
                          EstadoOpeSerializer, SistemaSerializer,
                          TipoComponenteSerializer, PersonalSerializer,
                          CargoSerializer, EstadoManttoSerializer,
                          TipoIncidenteSerializer)
from .models import (TipoDispositivo, Edificio, Oficina,
                     EstadoOperacional, Sistema, TipoComponente,
                     Personal, Cargo, TipoIncidente, EstadoMantenimiento)

# Create your views here.


class TipoDispoViewSet(viewsets.ModelViewSet):

    queryset = TipoDispositivo.objects.filter(activo=True)
    serializer_class = TipoDispSerializer


class EdificioViewSet(viewsets.ModelViewSet):

    queryset = Edificio.objects.filter(activo=True)
    serializer_class = EdificioSerializer


class OficinaViewSet(viewsets.ModelViewSet):

    queryset = Oficina.objects.filter(activo=True)
    serializer_class = OficinaSerializer
    filter_fields = ('edificio',)



class EstadoOpeViewSet(viewsets.ModelViewSet):

    queryset = EstadoOperacional.objects.filter(activo=True)
    serializer_class = EstadoOpeSerializer

class SistemaViewSet(viewsets.ModelViewSet):

    queryset = Sistema.objects.filter(activo=True)
    serializer_class = SistemaSerializer


class TipoComponenteViewSet(viewsets.ModelViewSet):

    queryset = TipoComponente.objects.filter(activo=True)
    serializer_class = TipoComponenteSerializer


class PersonalViewSet(viewsets.ModelViewSet):

    queryset = Personal.objects.filter(activo=True)
    serializer_class = PersonalSerializer
    filter_fields = ('cargo',)


class CargoViewSet(viewsets.ModelViewSet):

    queryset = Cargo.objects.filter(activo=True)
    serializer_class = CargoSerializer


class TipoIncidenteViewSet(viewsets.ModelViewSet):

    queryset = TipoIncidente.objects.filter(activo=True)
    serializer_class = TipoIncidenteSerializer

class EstadoManttoViewSet(viewsets.ModelViewSet):

    queryset = EstadoMantenimiento.objects.filter(activo=True)
    serializer_class = EstadoManttoSerializer

class Listar(View):
    def get(self, request, *args, **kwargs):
        data = TipoDispSerializer(TipoDispositivo.objects.all(), many=True)
        return JsonResponse({'items':data.data, 'status': "success"})
