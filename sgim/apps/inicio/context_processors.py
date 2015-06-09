
from sgim.settings import BOWER_URL
from apps.gestion_red.models import GeneralEvent, BootEvent


def static_base_urls(request):
    general = GeneralEvent.objects.filter(leido=False).count()
    boots = BootEvent.objects.filter(leido=False).count()
    total = general + boots

    return {
        'BOWER_URL': BOWER_URL,
        'general_count': general,
        'boot_count': boots,
        'total_count': total,
    }
