
from django.http import HttpResponseRedirect


class LoginRedirectMiddleware(object):
    """docstring for AjaxResponse"""
    def process_request(self, request):
        if request.path == "/login/" and request.user.is_authenticated():
            return HttpResponseRedirect("/")
        elif request.path == "/admin/" and not request.user.is_admin():
            return HttpResponseRedirect("/")
