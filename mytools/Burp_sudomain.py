
import requests
import argparse

# 爆破网站域名，寻找子域名
# 使用方法：python Burp_sudomain.py -d baidu.com -f subnames.txt

def subdomain(domain, file):
    # 读取子域名字典
    with open(file='subnames.txt', mode='r', encoding='utf-8') as f:
        subnames = f.readlines()

    # 清空result.txt的内容(保证上次的结果不会影响这次的结果)
    with open('result.txt', mode='w', encoding='utf-8') as f:
        f.write('')

    # 遍历子域名字典
    for subname in subnames:
        subname = subname.strip()
        url = f'http://{subname}.{domain}'
        try:
            # 发送请求
            r = requests.get(url)
            if r.status_code == 200:
                print(f"子域名{subname}.{domain}存在")
        except Exception as e:
            # print(f"子域名{subname}.{domain}不存在")
            # print(f"错误信息: {e}")
            pass
        # 保存结果,只保存存在的子域名
        with open('result.txt', mode='a', encoding='utf-8') as f:
            f.write(f"{subname}.{domain}\n")

## 测试用例
# if __name__ == '__main__':
#     subdomain('baidu.com', 'subnames.txt')


# if __name__ == '__main__':
#     parser = argparse.ArgumentParser(description='爆破网站域名，寻找子域名')
#     parser.add_argument('-d', '--domain', type=str, help='目标域名')
#     parser.add_argument('-f', '--file', type=str, help='子域名字典')
#     args = parser.parse_args()
#     subdomain(args.domain, args.file)
