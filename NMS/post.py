__author__ = 'edx'

import urllib, urllib2

dataDict = {'direccion': '127.0.0.2', 'uptime':2323, 'tipo':'shutdown'}
try:
    data = urllib.urlencode(dataDict)
    u = urllib.urlopen("http://127.0.0.1:8000/gestion/boot_event/agregar/", data)
    res = u.read()
    print("Result %s: %s" % (u.getcode(), res))
except Exception, e:
    print(e.message)
    print("Error enviando datos al servidor")
