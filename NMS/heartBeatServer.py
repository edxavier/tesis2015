import json
from utils.web_methods import HttpHelper

__author__ = 'edx'
""" Threaded heartbeat server """
import socket, threading, time
UDP_PORT = 9000
CHECK_PERIOD = 5
CHECK_TIMEOUT = 10



#heredar de dictionary
class Heartbeats(dict):
    """ Manage shared heartbeats dictionary with thread locking """
    def __init__(self):
        super(Heartbeats, self).__init__()
        self._lock = threading.Lock()

    def __setitem__(self, key, value):
        """ Create or update the dictionary entry for a client """
        self._lock.acquire()
        try:
            super(Heartbeats, self).__setitem__(key, value)
        finally:
            self._lock.release()

    def getSilent(self):
        """ Return a list of clients with heartbeat older than CHECK_TIMEOUT """
        limit = time.time() - CHECK_TIMEOUT
        self._lock.acquire()
        try:
            silent = [ip for (ip, ipTime) in self.items() if ipTime < limit]
        finally:
            self._lock.release()
        return silent



class Receiver(threading.Thread):
    """ Receive UDP packets and log them in the heartbeats dictionary """
    def __init__(self, goOnEvent, heartbeats):
        super(Receiver, self).__init__()
        self.goOnEvent = goOnEvent
        self.heartbeats = heartbeats
        self.recSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.recSocket.settimeout(CHECK_TIMEOUT)
        self.recSocket.bind(('', UDP_PORT))

    def run(self):
        while self.goOnEvent.isSet():
            try:
                data, addr = self.recSocket.recvfrom(5)
                if data == 'PyHB':
                    self.heartbeats[addr[0]] = time.time()
            except socket.timeout:
                pass


def main(num_receivers=3):
    receiverEvent = threading.Event()
    receiverEvent.set()
    heartbeats = Heartbeats()
    #iniciar Sesio en el servidor web
    cli = HttpHelper(server_addr='127.0.0.1', server_port=8000)
    res = cli.http_login(user="eder", password="eder")
    if res:
        #obtener el listado de host a monitorizar
        res = cli.http_get(url="/api/gestion/hosts/?format=json")
        hosts = res.json()
        host_list = []
        for h in hosts:
            heartbeats[h["direccion"]] = time.time()
            host_list.append(h["direccion"])

    receivers = []
    for i in range(num_receivers):
        receiver = Receiver(goOnEvent=receiverEvent, heartbeats=heartbeats)
        receiver.start()
        receivers.append(receiver)
        print 'Threaded heartbeat server listening on port %d' % UDP_PORT
        print 'press Ctrl-C to stop'
        try:
            while True:
                #obtener los ip que no han notificado su presencia
                silent = heartbeats.getSilent()
                print 'Silent clients: %s' % silent
                #Verificar si se recibio msg de un ip no registrada y registrarla
                for hitem in heartbeats:
                    if hitem not in host_list:
                        print(hitem+" NO ESTA EN LA BD")
                        nh = {}
                        h['heartbeat'] = True
                        nh['direccion'] = hitem
                        nh['esta_conectado'] = True
                        cli.http_post("/gestion/hosts/listar/", nh)
                        #obtener el listado de host a monitorizar
                        res = cli.http_get(url="/api/gestion/hosts/?format=json")
                        hosts = res.json()
                        host_list.append(hitem)

                for h in hosts:
                    ip = h['direccion']
                    #verificar si la ip actual se encuantra entre las ip inactivas
                    if ip in silent:
                        temp = h['esta_conectado']
                        h['esta_conectado'] = False
                        #si su estado es diferente al de la ultima vez
                        if temp != h['esta_conectado']:
                            print("Actualiza el Servidor con Down")
                            nh = {}
                            nh['heartbeat'] = True
                            nh['direccion'] = h['direccion']
                            nh['esta_conectado'] = False
                            cli.http_post("/gestion/hosts/listar/", nh)
                            #cli.http_post("/gestion/hosts/listar/", h)
                    else:
                        temp = h['esta_conectado']
                        h['esta_conectado'] = True
                        if temp != h['esta_conectado']:
                            print("Actualiza el Servidor con Up")
                            nh = {}
                            nh['heartbeat'] = True
                            nh['direccion'] = h['direccion']
                            nh['esta_conectado'] = True
                            cli.http_post("/gestion/hosts/listar/", nh)
                            #cli.http_post("/gestion/hosts/listar/", h)

                time.sleep(CHECK_PERIOD)
        except KeyboardInterrupt:
            print 'Exiting, please wait...'
            receiverEvent.clear( )
            for receiver in receivers:
                receiver.join( )
            print 'Finished.'

if __name__ == '__main__':
        main()
