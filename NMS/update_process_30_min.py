__author__ = 'edx'
from utils.system import System
import json
from utils.trap_snmp_utils import http_get, http_post
from utils.web_methods import HttpHelper


cli = HttpHelper(server_addr='127.0.0.1', server_port=8000)
res = cli.http_login(user="snmp", password="snmp")
if res:
    #obtener el listado de host a monitorizar
    res = cli.http_get(url="/api/gestion/hosts/?format=json")
    hosts = res.json()
    for h in hosts:
        try:
            sys = System(address=h['direccion'], initialize=False)
            print(h['direccion'])
            sys.get_procs(cli)
        except Exception, e:
            print(h['direccion'])
            print("Exception: > "+str(e.message))

