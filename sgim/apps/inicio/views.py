
from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from django.template.context import RequestContext


# Create your views here.
class Home(TemplateView):
    def get(self, request):
        return render_to_response(
            'home.html', locals(), context_instance=RequestContext(request)
        )
