QT += qml quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc \
    qml.qrc \
    qml.qrc


QML_IMPORT_PATH = $$PWD/imports


QML_DESIGNER_IMPORT_PATH =



qnx: target.path = /tmp/$${TARGET}/bin
else: win32|unix: target.path = $$[QT_INSTALL_EXAMPLES]/demos/$${TARGET}
!isEmpty(target.path): INSTALLS += target

SUBDIRS +=
