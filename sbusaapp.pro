TEMPLATE = app

QT += quick qml quickcontrols2 webengine


SOURCES += main.cpp

RESOURCES += qml.qrc

QTQUICK_COMPILER_SKIPPED_RESOURCES = qml.qrc
QMAKE_CLEAN += $(TARGET) $(QMAKE_TARGET)
