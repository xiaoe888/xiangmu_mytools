##########################################
# 用python写的自己的一些攻击脚本工具包
# 作者：WindEsky
# 日期：2024-04-16
# 版本：V1.0

# DESC: 本工具包能够实现的功能：
#  1、登录md5+盐值加密验证
#  2、面向对象（数据库-->对象, 连接的对象conn只能有一个）
#  3、选择
# 【1、爬虫https://stackoverflow.com/ 放到md文件里面--> a , b, c】,
# 【2。 输入一个网址：xxx,找到xxx的子域名】，
# 【3. 扫描局指定网段的所有开放主机的所有的开放端口】，
# 【4. 爆破：1. 3306，2. 6379，3. 服务器】，
# 【5. 提权：通过redis进行提权】
# 【6. 加密解密】
# 【7. 退出】

# 导入模块
import hashlib
import datetime
import Burp_spider
import Burp_sudomain
import PortScanner
import Burp_Port
import Burp_Redis
import encryption
from PyQt5.QtWidgets import QApplication
import pymysql
from pymysql.cursors import DictCursor
import sys


# 命令行界面
# 此界面通过命令行实现，用户可以通过输入数字选择对应的功能
#############################


def Bunner():
    print("欢迎使用WindEsky的攻击脚本工具包")
    print("   _      ___         ______    __            ______            __    ")
    print("  | | /| / (_)__  ___/ / __/__ / /____ __    / __/ /  ___ _____/ /__  ")
    print("  | |/ |/ / / _ \/ _  / _/(_-</  '_/ // /   _\ \/ _ \/ _ `/ __/  '_/  ")
    print("  |__/|__/_/_//_/\_,_/___/___/_/\_\\_, /   /___/_//_/\_,_/_/ /_/\_\   ")
    print("                                  /___/                               ")
    print("作者：WindEsky")
    print("本工具仅供学习交流使用，不得用于非法用途，否则后果自负")
    print("E-Mail: 1404275526@qq.com")
    current_time = datetime.datetime.now()
    print(f"日期：{current_time.strftime('%Y-%m-%d')}")


def select():
    print("=============================================")
    print("请选择对应的功能:")
    print("1、爬虫https://stackoverflow.com/questions,将问题标题放到md文件中")
    print("2、输入一个网址：xxx,找到xxx的子域名")
    print("3、扫描局指定网段的所有开放主机的所有的开放端口")
    print("4、爆破：1. 3306，2. 6379，3. 服务器")
    print("5、提权：通过redis进行提权")
    print("6、加密和解密文件")
    print("7、退出主程序")
    print("=============================================")
    num = input("请输入对应的数字:")
    return num


############################
# # 【1、爬虫https://stackoverflow.com/question 放到文件里面存储--> a , b, c】


def spider():
    print("正在爬取https://stackoverflow.com/questions的问题标题,请稍等...")
    Burp_spider.start_spider()
    print("=============================================")
    print("爬取完毕,问题已成功保存到stackoverflow_questions.md文件中")
    print("=============================================")
    # 询问是否返回主界面
    return_main()


# # 【2。 子域名爆破：输入一个网址：xxx,找到xxx的子域名】
def burp_subdomain():
    web = input("请输入网站的域名(由于字典限制,暂时只能爆破指定域名,不要加www或者Https):")
    print("正在爆破子域名,请稍等...")
    Burp_sudomain.subdomain(web, "subnames.txt")
    print("=============================================")
    print("子域名爆破完成")
    # 读取result.txt文件,显示所有存在的子域名
    with open('result.txt', mode='r', encoding='utf-8') as f:
        print("子域名爆破结果如下,结果保存在result.txt中，所有存在的子域名如下:")
        print("=============================================")
        print(f.read())
    print("=============================================")
    # 询问是否返回主界面
    return_main()


# 【4. 爆破：1. 3306，2. 6379，3. 服务器】
def burp_port():
    input("请按回车键开始爆破端口:")
    print("=============================================")
    print("正在爆破端口,请稍等...")
    # 1. 爆破3306端口
    print("开始爆破3306端口:")
    ip = "192.168.4.66"
    Burp_Port.MySQLBurp(ip, "password.txt").burp()
    # 2. 爆破6379端口
    print("=============================================")
    print("开始爆破6379端口:")
    ip = "192.168.153.138"
    Burp_Port.RedisBurp("password.txt").burp(ip)

    # 3. 爆破服务器
    print("=============================================")
    print("开始爆破服务器:")
    Burp_Port.brute_sever("admin", "admin", "http://192.168.153.138:8080/WoniuSales1.4/user/login")
    Burp_Port.login_burp_server("http://192.168.153.138:8080/WoniuSales1.4/user/login")

    print("===================================")
    print("爆破完毕")
    # 询问是否返回主界面
    print("=============================================")
    return_main()


# # 【5. 提权：通过redis进行提权】
def redis():
    ip = input("请输入Redis服务器的IP地址:")
    print("请按回车键开始爆破Redis密码,进行Redis RDB提权登录:")
    Burp_Redis.burp_redis(ip)
    # 这里的Redis是通过SSH免密登录的,需要提前开启VM虚拟机模拟Redis服务器
    # 询问是否返回主界面
    print("=============================================")
    return_main()


# # 【6, 加密和解密文件】
def jiami():
    app = QApplication(sys.argv)
    mainWin = encryption.FileEncryptDecryptApp()
    mainWin.show()
    app.exec_()
    return_main()

# # 【7. 退出】
def Exit():
    print("退出程序")
    sys.exit()

def return_main():
    print("=============================================")
    while True:
        print("是否返回主界面？1返回2退出")
        if input("请输入对应的数字:") == '1':
            return 0
        elif input("请输入对应的数字:") == '2':
            print("正在退出...")
            exit(0)
        else:
            print("输入有误，请重新输入")
            continue
    print("=============================================")

# # 【7. 登录】
def check_login(username, password):
    # 查询数据库
    cursor = conn.cursor(DictCursor)
    sql = f"select username from user where username='{username}'"
    cursor.execute(sql)
    result = cursor.fetchone()
    cursor.close()

    # 判断用户名是否存在
    if result:
        # 查询数据库
        cursor = conn.cursor(DictCursor)
        sql = f"select username from user where username='{username}'"
        cursor.execute(sql)
        # result = cursor.fetchone()
        # print(result)
        print("用户名存在")
        cursor.close()
    else:
        print("用户名不存在")
        # 询问是否返回主界面
        print("程序退出")
        sys.exit()

    # 查询数据库中的密码,并进行md5盐加密,与输入的密码进行比较
    cursor = conn.cursor(DictCursor)
    sql = f"select slat from user where username='{username}'"
    cursor.execute(sql)
    result = cursor.fetchone()
    cursor.close()
    # 对输入的密码进行md5盐加密
    md5_password = hashlib.md5((password + salt).encode()).hexdigest()
    # print(md5_password)
    if md5_password == result['slat']:
        print("登录成功")
    else:
        print("登录失败,密码错误")
        print("程序退出")
        sys.exit()


if __name__ == '__main__':
    # # 显示欢迎界面
    Bunner()

    # 连接数据库
    conn = pymysql.connect(
        host="localhost",
        user="root",
        password="138653",
        database="woniusales",
        port=3306,
        charset="utf8"
    )

    salt = "@ASDa%12"  # 定义盐值
    # 登录
    print("=============================================")
    username = input("请输入用户名:")
    password = input("请输入密码:")
    check_login(username, password)

    # 关闭数据库
    conn.close()

    # 根据用户输入的数字选择对应的功能
    while True:
        num = select()
        # 1、爬虫https://stackoverflow.com/ 放到md文件里面--> a , b, c
        if num == "1":
            spider()
        # 2、输入一个网址：xxx,找到xxx的子域名
        elif num == "2":
            burp_subdomain()
        # 3、扫描局指定网段的所有开放主机的所有的开放端口
        elif num == "3":
            # 请输入指定的网段
            print("正在扫描局域网内的所有主机的所有端口,请稍等...")
            PortScanner.PortScanner("192.168.4.").start_scanning()
            # Burp_Port.scan_network(network, start_port, end_port)
            print("扫描完毕")
        # 4、爆破：1. 3306，2. 6379，3. 服务器
        elif num == "4":
            burp_port()
        # 5、提权：通过redis进行提权
        elif num == "5":
            redis()
        # 6、加密和解密文件
        elif num == "6":
            jiami()
        # 7. 退出
        elif num == "7":
            Exit()
        else:
            print("输入有误，请重新输入")
            go_on = input("是否继续使用？(y/n):")
            if go_on == "n":
                Exit()
            else:
                continue


