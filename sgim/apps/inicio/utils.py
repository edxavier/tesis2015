from datetime import datetime, timedelta

__author__ = 'edx'
import os
from django.conf import settings
from twilio.rest import TwilioRestClient
import cStringIO as StringIO
#import ho.pisa as pisa
from xhtml2pdf import pisa
from django.template.loader import get_template
from django.template import Context
from django.http import HttpResponse
from cgi import escape
from django.core.mail import EmailMessage
import urllib

def html_to_pdf(template_src, context_dict):
    template = get_template(template_src)
    context = Context(context_dict)
    html = template.render(context)
    result = StringIO.StringIO()


    """pdf = pisa.pisaDocument(StringIO.StringIO(html.encode("ISO-8859-1")), result, link_callback=link_callback)
    if not pdf.err:
        return HttpResponse(result.getvalue(), content_type="application/pdf")
    else:
        return HttpResponse("Hemos tenido algunos errores <pre>%s</pre>", escape(html))
    """
    try:
        # Write PDF to file
        #file = open(os.path.join(settings.MEDIA_ROOT, 'matriz.pdf'), "w+b")
        pisaStatus = pisa.CreatePDF(StringIO.StringIO(html.encode("UTF-8")), dest=result,
                       link_callback=link_callback)

        # Return PDF document through a Django HTTP response
        #file.seek(0)
        #pdf = file.read()
        #file.close()            # Don't forget to close the file handle
        if not pisaStatus.err:
            return HttpResponse(result.getvalue(), content_type='application/pdf')
        else:
            return HttpResponse("Hemos tenido algunos errores <pre>%s</pre>", escape(html))
    except Exception, e:
        return HttpResponse("<h1> 505 INTERNAL SERVER ERROR</h1> <p> No fue posible generar el reporte. Hemos tenido un error inesperado...  :(</p> "+ str(e.message))

def enviarSMS(destino, mensaje):
    try:
        account_sid = "AC5080874c94548bf82f1ed9246e4574d9"
        auth_token = "cb3d578027132d9a873d45bb382e2b5b"
        client = TwilioRestClient(account_sid, auth_token)
        numero = destino.rstrip('-')
        client.sms.messages.create(
        body = mensaje, # mensaje
        to = "+505"+numero,#remplazamos con nuestro numero o al que queramos enviar el sms
        from_= "+12012996148")# el numero que nos asigno twilio
    except:
        print("Ocurrio un error al enviar el SMS")


def agregarCreador(request, form):
    instance = form.save(commit=False)
    try:
        if instance.pk:
            instance.save()
        else:
            instance.creador = request.user
            instance.save()

    except Exception, e:
        return

    return instance


# Convert HTML URIs to absolute system paths so xhtml2pdf can access those resources
def link_callback(uri, rel):
    # use short variable names
    sUrl = settings.STATIC_URL      # Typically /static/
    sRoot = settings.RUTA_PROYECTO.child('static')# Typically /home/userX/project_static/
    mUrl = settings.MEDIA_URL       # Typically /static/media/
    mRoot = settings.RUTA_PROYECTO.child('media')     # Typically /home/userX/project_static/media/

    # convert URIs to absolute system paths
    if uri.startswith(mUrl):
       # path = os.path.join(mRoot, uri.replace(mUrl, ""))
        path = os.path.join(mRoot, uri.replace(mUrl, ""))
        #print "######################funciooooooooooooooooooooonaaaa es algo del mierda packete MEDIA:"+path
        #print(path)
    elif uri.startswith(sUrl):
        path = os.path.join(sRoot, uri.replace(sUrl, ""))
        #print "######################funciooooooooooooooooooooonaaaa es algo del mierda packete STATIC :"+path
        #print(path)
    # make sure that file exists
    if not os.path.isfile(path):
            raise Exception(
                    'media URI must start with %s or %s' % \
                    (sUrl, mUrl))
    return path


def enviarEmail(subject, to_list, message, template_name):
    msg = EmailMessage(subject=subject, from_email='Sala Tecnica <stecnica@eaai.com.ni>',
                       to=to_list)
    msg.template_name = template_name #este templete se crea en mailchimp
    msg.template_content = {
        'std_content00': message
    }
    msg.send()


def broadcast_event(data_obj, url=""):
    try:
        data = urllib.urlencode(data_obj)
        #u2 = urllib.urlopen("http://104.236.23.248:8500"+url, data)
        u2 = urllib.urlopen("https://104.236.23.248:7076"+url, data)
        #print("Result2 %s: %s" % (u2.getcode(), u2.read()))
    except Exception, e:
        print(e.message)
        print("Error enviando datos al servidor express")

def get_formated_duration(seconds=0):
    d = datetime.today() - timedelta(seconds=seconds, microseconds=0, milliseconds=0)
    operation_time = datetime.today() - d
    duration_time = str(operation_time).split('.')[0]
    return duration_time