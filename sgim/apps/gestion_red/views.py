from django.http import HttpResponse
from django.shortcuts import get_object_or_404
from django.views.decorators.csrf import csrf_exempt
from django.views.generic import View
from .models import *
from .forms import *
from .serializers import BootEventSerializer
from apps.inicio.utils import broadcast_event
# Create your views here.


class BootEventView(View):

    @csrf_exempt
    def dispatch(self, *args, **kwargs):
        return super(BootEventView, self).dispatch(*args, **kwargs)

    def post(self, request, *args, **kwargs):
        res = Host.objects.filter(direccion=request.POST['direccion'])
        if len(res) > 0:
            host = res[0]
        else:
            host = Host.objects.create(direccion=request.POST['direccion'])

        form = BootEventForm(request.POST)
        if form.is_valid():
            event = form.save(commit=False)
            event.host = host
            event.save()
            serial = BootEventSerializer(instance=event)
            broadcast_event(serial.data, "/boot_event/")
            return HttpResponse("success")
        else:
            return HttpResponse("fail")
