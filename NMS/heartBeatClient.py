__author__ = 'edx'
""" Send UDP packet periodically """
import socket, time

SERVER_IP = "10.160.80.126"
SERVER_PORT = 9000
BEAT_PERIOD = 5

print("Sending heartbeat to %s:%d" % (SERVER_IP, SERVER_PORT))

while True:
    hb_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    hb_socket.sendto('PyHB', (SERVER_IP, SERVER_PORT))
    if __debug__:
        print("Time: %s" % (time.ctime()))
    time.sleep(BEAT_PERIOD)