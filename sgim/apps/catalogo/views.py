from django.shortcuts import render
from django.views.generic import View
from django.http import JsonResponse
from rest_framework import viewsets
from .serializers import TipoDispSerializer, EdificioSerializer, OficinaSerializer, EstadoOpeSerializer, SistemaSerializer
from .models import TipoDispositivo, Edificio, Oficina, EstadoOperacional, Sistema
from django.core import serializers
# Create your views here.


class TipoDispoViewSet(viewsets.ModelViewSet):

    queryset = TipoDispositivo.objects.all()
    serializer_class = TipoDispSerializer


class EdificioViewSet(viewsets.ModelViewSet):

    queryset = Edificio.objects.all()
    serializer_class = EdificioSerializer


class OficinaViewSet(viewsets.ModelViewSet):

    queryset = Oficina.objects.all()
    serializer_class = OficinaSerializer
    filter_fields = ('edificio',)




class EstadoOpeViewSet(viewsets.ModelViewSet):

    queryset = EstadoOperacional.objects.all()
    serializer_class = EstadoOpeSerializer

class SistemaViewSet(viewsets.ModelViewSet):

    queryset = Sistema.objects.all()
    serializer_class = SistemaSerializer


class Listar(View):
    def get(self, request, *args, **kwargs):
        data = TipoDispSerializer(TipoDispositivo.objects.all(), many=True)
        return JsonResponse({'items':data.data, 'status': "success"})
