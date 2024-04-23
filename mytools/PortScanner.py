import socket
from threading import Thread


# 扫描区域网段的所有主机的所有端口
class PortScanner:
    def __init__(self, segment, step=500):
        self.segment = segment
        self.step = step

    def scan_ip_port(self, ip, start, end):
        for port in range(start, end + 1):
            try:
                sk = socket.socket()
                sk.settimeout(0.5)
                sk.connect((ip, port))
                print(f"{ip}地址存在端口号：{port}")
            except:
                pass

    def start_scanning(self):
        for i in range(1, 255):
            for j in range(0, 65535, self.step):
                ip = self.segment + str(i)
                Thread(target=self.scan_ip_port, args=(ip, j, j+self.step)).start()


# if __name__ == '__main__':
#     PortScanner("192.168.4.").start_scanning()