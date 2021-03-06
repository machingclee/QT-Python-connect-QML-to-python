# This Python file uses the following encoding: utf-8
import os
import sys
import resource
from Backend import Backend

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine




if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    backend = Backend()
    engine = QQmlApplicationEngine()
    engine.rootContext().setContextProperty("backend", backend)
    mainQMLPath = os.path.join(os.path.dirname(__file__), "main.qml")
    engine.load(mainQMLPath)

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())

