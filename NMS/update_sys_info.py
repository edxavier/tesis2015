__author__ = 'edx'
from utils.system import System
import json
from utils.trap_snmp_utils import http_get, http_post
from utils.dictionary import *
from utils.snmp_requests import get_bulk_request



res = http_get("/api/gestion/hosts/?format=json")
hosts = json.loads(res)

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
            http_post(h, "/gestion/hosts/listar/")
        print(h['direccion'])
        #sys.get_storages()

    except Exception, e:
        print("Exception: >"+e.message)

