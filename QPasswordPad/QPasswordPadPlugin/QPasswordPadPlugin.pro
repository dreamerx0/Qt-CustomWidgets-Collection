CONFIG += plugin debug_and_release
TEMPLATE = lib

LIBS += -L.

TARGET = $$qtLibraryTarget($$TARGET)
INSTALLS += target
windows {
    target.path = $$(QT_DIR)/../../Tools/QtCreator/bin/plugins/designer

    debug:target_lib.files = $$OUT_PWD/debug/$${TARGET}.lib
    release:target_lib.files = $$OUT_PWD/release/$${TARGET}.lib
    target_lib.path = $$(QT_DIR)/../../Tools/QtCreator/bin/plugins/designer
    INSTALLS += target_lib
}

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += designer
} else {
    CONFIG += designer
}

include(../QPasswordPad.pri)

HEADERS += \
    QPasswordPadPlugin.h

SOURCES += \
    QPasswordPadPlugin.cpp

RESOURCES += \
    QPasswordPadPlugin.qrc
