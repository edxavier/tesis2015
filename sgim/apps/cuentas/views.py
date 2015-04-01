from django.shortcuts import render, render_to_response
from django.http import HttpResponse
from django.template.context import RequestContext
from django.views.generic import TemplateView

from .forms import LoginForm
from django.contrib.auth import login, logout, authenticate

# Create your views here.
class Datos(TemplateView):
    def get(self, request):
        form = LoginForm()
        #return render_to_response('cuentas/login.html', locals(),context_instance=RequestContext(request))
        return HttpResponse("Esta es la vista de los datos")

    def post(self,request):
        #form = LoginForm(request.POST,request.FILES)

        return HttpResponse("Aqui va "+ request.POST['username'])