QT        -= gui
TARGET     = qtzeroconf
VERSION    = 9999
DESTDIR    = $$_PRO_FILE_PWD_/bin
TEMPLATE   = lib
CONFIG    += c++11
CONFIG    += link_pkgconfig
PKGCONFIG += avahi-qt5 avahi-client

CONFIG   += debug_and_release
CONFIG(debug, debug|release) {
     TARGET = $$join(TARGET,,,d)
}

INCLUDEPATH += include/

include(zconf.pri)
