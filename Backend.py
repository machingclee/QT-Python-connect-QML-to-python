# This Python file uses the following encoding: utf-8
from PySide6 import QtCore
from PySide6.QtCore import Slot


class Backend(QtCore.QObject):
    def __init__(self):
        super(Backend, self).__init__()
        print("backend inited")

    @Slot(str, str)
    def checkLogin(self, username, password):
        print("this is a message from python backend")
        print(f"with username {username} and password {password}")
