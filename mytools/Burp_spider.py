import multiprocessing

import requests
from bs4 import BeautifulSoup
from multiprocessing import Pool

# 爬虫,获取stackoverflow的问题标题
# https://stackoverflow.com/questions
# 这个def get_last_page(url)函数是获取最后一页的页码
def get_last_page(url):
    try:
        # 发送GET请求获取网页内容
        response = requests.get(url)
        if response.status_code == 200:
            # 使用BeautifulSoup解析网页内容
            soup = BeautifulSoup(response.text, 'html.parser')
            # 找到包含页码的标签
            pagination_items = soup.find_all('a', class_='s-pagination--item js-pagination-item')
            if pagination_items:
                # 获取所有页码的文本，并过滤掉非数字的文本
                page_numbers = [int(item.text.strip()) for item in pagination_items if item.text.strip().isdigit()]
                # 找到最大的页码作为最后一页
                last_page = max(page_numbers)
                return last_page
            else:
                print("没有找到页码")
                return None
        else:
            print("请求失败")
            return None
    except Exception as e:
        print(f"发生异常: {e}")
        return None


# 爬虫,获取stackoverflow的问题标题的函数
def crawl_stackoverflow_questions(url):
    try:
        # 发送GET请求获取网页内容
        response = requests.get(url)
        if response.status_code == 200:
            # 使用BeautifulSoup解析网页内容
            soup = BeautifulSoup(response.text, 'html.parser')
            # 找到所有包含问题标题的标签
            question_titles = soup.find_all('h3', class_='s-post-summary--content-title')
            if question_titles:
                # 将问题标题写入Markdown文件
                with open('./stackoverflow_questions.md', 'a', encoding='utf-8') as f:
                    for title in question_titles:
                        # 找到问题标题下的第一个链接标签
                        link = title.find_next('a', class_='s-link')
                        if link:
                            f.write(f"* [{title.text.strip()}]({url}{link['href']})\n")
            else:
                print("没有找到问题标题")
        else:
            print("请求失败")
    except Exception as e:
        print(f"发生异常: {e}")

# 生成所有页面的URL
def generate_urls(base_url, start_page, end_page):
    urls = []
    for page in range(start_page, end_page + 1):
        url = f"{base_url}?page={page}"
        urls.append(url)
    return urls

# 爬虫入口函数
def start_spider():
    # 打包成exe文件时，需要加上这句代码
    multiprocessing.freeze_support()

    base_url = "https://stackoverflow.com/questions"
    start_page = 1
    # 获取最后一页的页码
    last_page = get_last_page(base_url)
    if last_page:
        end_page = last_page
        urls = generate_urls(base_url, start_page, end_page)

        # 清空Markdown文件
        with open('./stackoverflow_questions.md', 'w', encoding='utf-8') as f:
            f.write("")

        # 使用进程池并发保存页面
        pool = Pool(processes=4)
        pool.map(crawl_stackoverflow_questions, urls)
        pool.close()
        pool.join()



        print("问题已成功保存到stackoverflow_questions.md文件中")
    else:
        print("无法获取最后一页的页码，程序退出")

if __name__ == '__main__':
    start_spider()