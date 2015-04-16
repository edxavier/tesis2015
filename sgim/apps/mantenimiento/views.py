from django.shortcuts import render
from django.shortcuts import render, render_to_response, get_object_or_404
from django.views.generic import View
from django.template.context import RequestContext

# Create your views here.

# Create your views here.
class Tarea(View):
    def get(self, request, *args, **kwargs):
        return render_to_response('mantto/tarea_add.html',
            locals(), context_instance=RequestContext(request))