__author__ = 'edx'
from twilio.rest import TwilioRestClient
import cStringIO as StringIO
import ho.pisa as pisa
from django.template.loader import get_template
from django.template import Context
from django.http import HttpResponse
from cgi import escape


def html_to_pdf(template_src, context_dict):
    template = get_template(template_src)
    context = Context(context_dict)
    html = template.render(context)
    result = StringIO.StringIO()

    pdf = pisa.pisaDocument(StringIO.StringIO(html.encode("ISO-8859-1")), result)
    if not pdf.err:
        return HttpResponse(result.getvalue(), content_type="application/pdf")
    else:
        return HttpResponse("Hemos tenido algunos errores <pre>%s</pre>", escape(html))



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


