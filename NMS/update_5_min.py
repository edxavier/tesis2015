#!/usr/bin/python
from config import CONFIG

__author__ = 'edx'
from utils.system import System
from utils.web_methods import HttpHelper


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
                cli.http_post("/gestion/hosts/listar/", h)
            #print(h['direccion'])
            sys.get_memory(cli)
            sys.get_load(cli)

        except Exception, e:
            print(h['direccion'])
            print("Exception: > "+str(e.message))

