
from sgim.settings import BOWER_URL


def static_base_urls(request):
    return {
        'BOWER_URL': BOWER_URL
    }
