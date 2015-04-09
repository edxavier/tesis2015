
from django.http import HttpResponseRedirect


class LoginRedirectMiddleware(object):
    """docstring for AjaxResponse"""
    def process_request(self, request):
        if request.path == "/login/" and request.user.is_authenticated():
            return HttpResponseRedirect("/")
