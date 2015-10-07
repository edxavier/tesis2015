#!/usr/bin/python
from config import CONFIG

__author__ = 'edx'
from utils.system import System
from utils.web_methods import HttpHelper
from utils.helpers import get_pos


cli = HttpHelper(server_addr=CONFIG['webServer'], server_port=int(CONFIG['webServerPort']))
res = cli.http_login(user=CONFIG['webUser'], password=CONFIG['webPassword'])
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
                h['heartbeat'] = False
                try:
                    h['position'] = get_pos(h['direccion'])
                except Exception:
                    pass
                cli.http_post("/gestion/hosts/listar/", h)
            #print(h['direccion'])

        except Exception, e:
            print(h['direccion'])
            print("sysdata Exception: > "+str(e.message))

        try:
            sys.get_memory(cli)
        except Exception, e:
            print(h['direccion'])
            print("memory update Exception: > "+str(e.message))


        try:
            sys.get_load(cli)
        except Exception, e:
            print(h['direccion'])
            print("memory update Exception: > "+str(e.message))

