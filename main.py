import sys
import os
import qml_rc

sys.path.append('./lib')

from jsonUtil  import *

from PyQt5 import QtCore
from PyQt5.QtCore import QDateTime, QObject, pyqtSignal, pyqtSlot, QUrl
#from PyQt5.QtWidgets import QApplication
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQuick import  QQuickView
from PyQt5.QtQml import QQmlApplicationEngine,QQmlEngine,QQmlComponent
from ctypes import *

if __name__ == '__main__':
    app = QGuiApplication(sys.argv)
    # Create the QML user interface.
    engine =  QQmlApplicationEngine()
    engine.load(QUrl('qrc:/qml/main.qml'))
    win = engine.rootObjects()[0]
    win.show()
    sys.exit(app.exec_())
