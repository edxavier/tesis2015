#!/usr/bin/python
__author__ = 'edx'
from utils.system import System
import json
from utils.trap_snmp_utils import http_get, http_post
from utils.web_methods import HttpHelper
from config import CONFIG

cli = HttpHelper(server_addr=CONFIG['webServer'], server_port=int(CONFIG['webServerPort']))
res = cli.http_login(user=CONFIG['webUser'], password=CONFIG['webPassword'])
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

