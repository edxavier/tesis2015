from django.contrib.auth.forms import PasswordChangeForm
from django.core.urlresolvers import reverse_lazy
from django.shortcuts import render, render_to_response, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.template.context import RequestContext
from django.utils.decorators import method_decorator
from django.views.generic import TemplateView
from .models import Usuario

from .forms import ModificarPerfilForm
from django.contrib.auth import login, logout, authenticate

# Create your views here.
class Perfil(TemplateView):
    def get(self, request,user_name,*args, **kwargs):
        perfil = get_object_or_404(Usuario, username=user_name)
        return render_to_response('cuentas/perfil.html', locals(),context_instance=RequestContext(request))


class ModificarPerfil(TemplateView):
    def get(self, request, *args, **kwargs):
        form = ModificarPerfilForm(instance=request.user)
        return render_to_response('cuentas/actualiza_perfil.html', locals(),context_instance=RequestContext(request))

    def post(self, request, *args, **kwargs):
        form = ModificarPerfilForm(request.POST,request.FILES,
                                   instance=Usuario.objects.get(username=request.user.username))
        if form.is_valid():
            form.save()
            return  HttpResponseRedirect("/cuentas/usuario/"+str(request.user))
        else:
            #perfil = get_object_or_404(Perfil, usuario=request.user)
            return render_to_response('cuentas/actualiza_perfil.html', locals(),context_instance=RequestContext(request))

class ChangepasswordForm (TemplateView):
    def get(self, request):
       # perfil = get_object_or_404(Perfil, usuario=request.user)
        form = PasswordChangeForm(user=request.user)
        return render_to_response('cuentas/cambiar_clave.html', locals(),context_instance=RequestContext(request))

    def post(self, request):
        form = PasswordChangeForm(user=request.user,data=request.POST)
        if form.is_valid():
            form.save()
            return  HttpResponseRedirect("/cuentas/usuario/"+str(request.user))
        else:
           # perfil = get_object_or_404(Perfil, usuario=request.user)
            return render_to_response('cuentas/cambiar_clave.html', locals(),context_instance=RequestContext(request))

