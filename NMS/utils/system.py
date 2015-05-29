__author__ = 'edx'
from snmp_requests import get_request, get_bulk_request
from helpers import get_num_entries, get_matrix_data
from dictionary import OIDS

UPTIME = '1.3.6.1.2.1.25.1.1.0'
UPTIME2 = '1.3.6.1.2.1.1.3.0'
DESC = '1.3.6.1.2.1.1.1.0'
SERVICES = '1.3.6.1.2.1.1.7.0'
SYS_NAME = '1.3.6.1.2.1.1.5.0'
PROCESSES = '1.3.6.1.2.1.25.1.6.0'
USERS = '1.3.6.1.2.1.25.1.5.0'
SYS_DATE = '1.3.6.1.2.1.25.1.2.0'

class System:

    def __init__(self, address="127.0.0.1", initialize=True):
        self.initialized = initialize
        self.address = address
        if initialize:
            result = get_bulk_request(max_result=7, start_oid="1.3.6.1.2.1.1.1", address=address)
            result2 = get_bulk_request(max_result=7, start_oid="1.3.6.1.2.1.25.1.1", address=address)
            self.upTime = int(result2[0])/100
            self.description = result[0]
            self.services = result[6]
            self.processes = result2[5]
            self.users = result2[4]
            self.sysName = result[4]
        else:
            self.upTime = None
            self.description = None
            self.services = None
            self.processes = None
            self.users = None
            self.sysName = None
        # self.sysDate = get_request(destino=address, mib_oid=SYS_DATE)

    def get_hostname(self):
        return get_request(destino=self.address, mib_oid=SYS_NAME)

    def get_uptime_agent(self):
        return get_request(destino=self.address, mib_oid=UPTIME)

    def get_uptime_sys(self):
        return get_request(destino=self.address, mib_oid=UPTIME2)

    def get_storages(self):
        result = get_bulk_request(max_result=60, address=self.address, start_oid="1.3.6.1.2.1.25.2.3.1")
        n = get_num_entries(result)
        t = get_matrix_data(result, 7, n)
        formated_data = []
        for i in range(0,len(t)):
            print(t[i])

    def get_devices(self):
        result = get_bulk_request(max_result=60, address=self.address, start_oid="1.3.6.1.2.1.25.3.2.1")
        n = get_num_entries(result)

        print(result)


