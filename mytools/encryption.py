import os
import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QMessageBox, QFileDialog

# 创建一个类，该类继承自 QMainWindow 类,并且实现了一个简单的文件加密解密工具
class FileEncryptDecryptApp(QMainWindow):
    def __init__(self):
        # 调用父类的构造函数
        super().__init__()
        # 设置窗口的标题和大小
        self.setWindowTitle("文件加密解密工具")
        self.initUI()

    # 初始化用户界面
    # 创建了两个按钮，并将它们放置在窗口中的指定位置。当按钮被点击时，与其连接的方法会被调用
    def initUI(self):
        # 设置窗口的位置和大小,窗口的左上角位置为 (100, 100)，宽度为 400 像素，高度为 200 像素。
        self.setGeometry(100, 100, 400, 200)

        # 创建两个按钮，一个用于加密文件，另一个用于解密文件
        encrypt_button = QPushButton("选择文件或目录并加密", self)
        # 将按钮的点击事件与加密按钮方法连接
        encrypt_button.clicked.connect(self.encrypt_button_click)
        # 设置按钮的位置和大小
        encrypt_button.setGeometry(50, 50, 300, 30)

        # 创建解密按钮
        decrypt_button = QPushButton("选择文件或目录并解密", self)
        # 将按钮的点击事件与解密按钮方法连接
        decrypt_button.clicked.connect(self.decrypt_button_click)
        # 设置按钮的位置和大小
        decrypt_button.setGeometry(50, 100, 300, 30)



    # 这个方法是对文件进行加密解密的
    def encrypt_decrypt_files(self, paths, mode):
        # 在加密模式下，可以使用该转换函数将每个字节的值与255的差值作为加密后的字节值。
        # 在解密模式下，同样可以使用该转换函数进行解密
        if mode == "encrypt":
            transform_func = lambda byte: 255 - byte
            action_message = "加密"
        elif mode == "decrypt":
            transform_func = lambda byte: 255 - byte
            action_message = "解密"
        else:
            return

        # 遍历用户选择的文件或目录
        for path in paths:
            if os.path.isfile(path):  # 如果是文件
                self.encrypt_decrypt_file(path, transform_func)
            elif os.path.isdir(path):  # 如果是目录
                for root, dirs, files in os.walk(path):
                    for file in files:
                        file_path = os.path.join(root, file)
                        # 对文件进行加密或解密
                        self.encrypt_decrypt_file(file_path, transform_func)

        # 提示用户加密或解密完成,在控制台和弹窗中显示
        print(f"{action_message}完成！")
        QMessageBox.information(self, f"{action_message}完成", f"{action_message}完成！")

    # 该方法用于对文件进行加密或解密
    def encrypt_decrypt_file(self, file_path, transform_func):
        # 读取文件的内容
        with open(file_path, 'rb') as f:
            data = f.read()
        # 对文件的内容进行转换
        # 将data中的每个字节应用transform_func转换函数，并将转换后的结果存储在transformed_data中，以便后续写入到文件中。
        transformed_data = bytes([transform_func(byte) for byte in data])
        # 将转换后的数据写入文件
        with open(file_path, 'wb') as f:
            f.write(transformed_data)

    # 该方法用于让用户选择要加密或解密的文件或目录
    def select_file_or_directory(self, title):
        # 创建一个文件对话框，以便用户可以选择要加密或解密的文件或目录
        options = QFileDialog.Options()
        # 禁用本地对话框
        options |= QFileDialog.DontUseNativeDialog
        # 获取用户选择的文件或目录的路径
        paths, _ = QFileDialog.getOpenFileNames(self, title, "", "All Files (*);;Directory", options=options)
        # 返回用户选择的文件或目录的路径
        return paths

    # 调用 select_file_or_directory 方法，以便用户可以选择要加密或解密的文件或目录
    def process_paths(self, mode):
        title = "选择要加密的文件或目录" if mode == "encrypt" else "选择要解密的文件或目录"
        paths = self.select_file_or_directory(title)
        if paths:
            self.encrypt_decrypt_files(paths, mode)

    # 当加密按钮被点击时，加密按钮检查方法会被调用
    def encrypt_button_click(self):
        # 调用 process_paths 方法，并传入 "encrypt" 作为参数
        self.process_paths("encrypt")

    # 当解密按钮被点击时,解密按钮检查方法会被调用
    def decrypt_button_click(self):
        self.process_paths("decrypt")

if __name__ == '__main__':
    # 创建一个应用程序对象
    app = QApplication(sys.argv)
    # 创建一个主窗口对象
    mainWin = FileEncryptDecryptApp()
    # 显示主窗口
    mainWin.show()
    # 运行应用程序,并退出程序,返回状态码,0表示正常退出,其他表示异常退出,返回状态码
    sys.exit(app.exec_())


