from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import TemplateView

# Create your views here.
class Home(TemplateView):
    def get(self, request):
        #return render_to_response('cuentas/login.html', locals(),context_instance=RequestContext(request))
        return HttpResponse("Este es el Home")
