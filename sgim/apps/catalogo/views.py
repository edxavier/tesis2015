from django.shortcuts import render
from django.views.generic import View
from django.http import JsonResponse
from rest_framework import viewsets
from .serializers import TipoDispSerializer
from .models import TipoDispositivo
from django.core import serializers
# Create your views here.


class TipoDispoViewSet(viewsets.ModelViewSet):

    queryset = TipoDispositivo.objects.all()
    serializer_class = TipoDispSerializer


class Listar(View):
    def get(self, request, *args, **kwargs):
        data = TipoDispSerializer(TipoDispositivo.objects.all(), many=True)
        return JsonResponse({'items':data.data, 'status': "success"})
