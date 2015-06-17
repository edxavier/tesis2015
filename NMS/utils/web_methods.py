__author__ = 'edx'
import requests


class HttpHelper(object):
    def __init__(self, server_addr="127.0.0.1", server_port=80, url="/"):
        self.addr = server_addr
        self.port = server_port
        self.url = url
        #Crear un objeto que preserve la sesion
        self.cli = requests.session()
        super(HttpHelper, self).__init__()

    def http_login(self, user="", password=""):
        self.cli.get('https://'+self.addr+':'+str(self.port)+'/login/',  verify=False)
        login_data = dict(username=user, password=password, csrfmiddlewaretoken= self.cli.cookies['csrftoken'])
        r = self.cli.post('https://'+self.addr+':'+str(self.port)+'/login/', data=login_data,  verify=False)
        if r.status_code == 200:
            return True
        else:
            return False

    def http_logout(self,):
        r = self.cli.get('https://'+self.addr+':'+str(self.port)+'/logout/',  verify=False)
        if r.status_code == 200:
            return True
        else:
            return False

    def http_get(self, url="/"):
        self.url = url
        res = self.cli.get('https://'+self.addr+':'+str(self.port)+self.url,  verify=False)
        return res

    def http_post(self, url="/", data = None):
        self.url = url
        res = self.cli.post('https://'+self.addr+':'+str(self.port)+self.url, data,  verify=False)
        return res

"""
r = requests.get('http://127.0.0.1:8000/login', auth=('edx', 'edx'))
print r.status_code
print r.headers['content-type']
print r.encoding

r = requests.get('http://127.0.0.1:8000/api/gestion/hosts/')
print r.status_code
print r.headers['content-type']
print r.encoding
print(r.json())
exit()
"""