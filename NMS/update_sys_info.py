__author__ = 'edx'
from utils.system import System
import json
from utils.trap_snmp_utils import http_get, http_post
from utils.web_methods import HttpHelper


cli = HttpHelper(server_addr='127.0.0.1', server_port=8000)
res = cli.http_login(user="eder", password="eder")
if res:
    #obtener el listado de host a monitorizar
    res = cli.http_get(url="/api/gestion/hosts/?format=json")
    hosts = res.json()
    for h in hosts:
        try:
            sys = System(address=h['direccion'])
            #sys = System(address=h['direccion'], initialize=False)
            if sys.sysName:
                h['nombre'] = sys.sysName
                h['descripcion'] = sys.description
                h['uptime'] = sys.upTime
                h['servicios'] = sys.services
                h['procesos'] = sys.processes
                h['usuarios'] = sys.users
                print(h['nombre'])
                h['heartbeat'] = False
                #http_post(h, "/gestion/hosts/listar/")
                cli.http_post("/gestion/hosts/listar/", h)

            print(h['direccion'])
            sys.get_storages(cli)

        except Exception, e:
            print("Exception: > "+str(e.message))

