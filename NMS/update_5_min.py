__author__ = 'edx'
from utils.system import System
from utils.web_methods import HttpHelper


cli = HttpHelper(server_addr='127.0.0.1', server_port=8000)
res = cli.http_login(user="snmp", password="snmp")
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
            print(h['direccion'])
            sys.get_memory(cli)
            sys.get_load(cli)

        except Exception, e:
            print(h['direccion'])
            print("Exception: > "+str(e.message))

