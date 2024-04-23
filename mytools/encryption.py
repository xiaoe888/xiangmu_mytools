import os
import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QMessageBox, QFileDialog

class FileEncryptDecryptApp(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("文件加密解密工具")
        self.initUI()

    def initUI(self):
        self.setGeometry(100, 100, 400, 200)

        encrypt_button = QPushButton("选择文件或目录并加密", self)
        encrypt_button.clicked.connect(self.encrypt_button_click)
        encrypt_button.setGeometry(50, 50, 300, 30)

        decrypt_button = QPushButton("选择文件或目录并解密", self)
        decrypt_button.clicked.connect(self.decrypt_button_click)
        decrypt_button.setGeometry(50, 100, 300, 30)

    def encrypt_decrypt_files(self, paths, mode):
        if mode == "encrypt":
            transform_func = lambda byte: 255 - byte
            action_message = "加密"
        elif mode == "decrypt":
            transform_func = lambda byte: 255 - byte
            action_message = "解密"
        else:
            return

        for path in paths:
            if os.path.isfile(path):  # 如果是文件
                self.encrypt_decrypt_file(path, transform_func)
            elif os.path.isdir(path):  # 如果是目录
                for root, dirs, files in os.walk(path):
                    for file in files:
                        file_path = os.path.join(root, file)
                        self.encrypt_decrypt_file(file_path, transform_func)
        print(f"{action_message}完成！")
        QMessageBox.information(self, f"{action_message}完成", f"{action_message}完成！")

    def encrypt_decrypt_file(self, file_path, transform_func):
        with open(file_path, 'rb') as f:
            data = f.read()
        transformed_data = bytes([transform_func(byte) for byte in data])
        with open(file_path, 'wb') as f:
            f.write(transformed_data)

    def select_file_or_directory(self, title):
        options = QFileDialog.Options()
        options |= QFileDialog.DontUseNativeDialog
        paths, _ = QFileDialog.getOpenFileNames(self, title, "", "All Files (*);;Directory", options=options)
        return paths

    def process_paths(self, mode):
        title = "选择要加密的文件或目录" if mode == "encrypt" else "选择要解密的文件或目录"
        paths = self.select_file_or_directory(title)
        if paths:
            self.encrypt_decrypt_files(paths, mode)

    def encrypt_button_click(self):
        self.process_paths("encrypt")

    def decrypt_button_click(self):
        self.process_paths("decrypt")

if __name__ == '__main__':
    app = QApplication(sys.argv)
    mainWin = FileEncryptDecryptApp()
    mainWin.show()
    sys.exit(app.exec_())


