#-------------------------------------------------
#
# Project created by QtCreator 2016-12-02T10:15:32
#
#-------------------------------------------------

QT       += core gui
QT       += widgets

TARGET = eAPI-DM-Utility
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    boardinfo.cpp \
    realtimeinfo.cpp \
    watchdog.cpp \
    mytabwidget.cpp \
    gpio.cpp \
    storage.cpp \
    i2c.cpp \
    temperatureBar.cpp \
    pwm.cpp

HEADERS  += mainwindow.h \
    boardinfo.h \
    realtimeinfo.h \
    watchdog.h \
    mytabwidget.h \
    gpio.h \
    storage.h \
    i2c.h \
    temperatureBar.h \
    pwm.h

FORMS    += mainwindow.ui

LIBPATH = $$(PREFIX)
equals(LIBPATH, "") {
	LIBPATH=/usr/local/lib
}
unix:!macx: LIBS += -L$$LIBPATH -lEApi

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

RESOURCES += \
    resource.qrc
