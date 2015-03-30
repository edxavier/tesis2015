__author__ = 'edx'
from twilio.rest import TwilioRestClient

def enviarSMS(destino,mensaje):
    try:
        account_sid = "AC5080874c94548bf82f1ed9246e4574d9"
        auth_token = "cb3d578027132d9a873d45bb382e2b5b"
        client = TwilioRestClient(account_sid, auth_token)
        numero = destino.rstrip('-')
        client.sms.messages.create(
        body = mensaje, # mensaje
        to = "+505"+numero, # remplazamos con nuestro numero o al que queramos enviar el sms
        from_= "+12012996148") # el numero que nos asigno twilio
    except:
        print("Ocurrio un error al enviar el SMS")