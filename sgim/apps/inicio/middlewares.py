
from django.http import HttpResponseRedirect


class LoginRedirectMiddleware(object):
    """docstring for AjaxResponse"""
    def process_request(self, request):
        if request.user.is_authenticated():
            if request.path == "/login/":
                return HttpResponseRedirect("/")
            elif request.path == "/admin/" and not request.user.is_admin():
                return HttpResponseRedirect("/")
        else:
            if request.path == "/admin/":
                return HttpResponseRedirect("/")
