# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = laba7_1

CONFIG += sailfishapp
//CONFIG += qt plugin c++11

SOURCES += src/laba7_1.cpp \
    src/counter.cpp \
    src/liststr.cpp

DISTFILES += qml/laba7_1.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/laba7_1.changes.in \
    rpm/laba7_1.changes.run.in \
    rpm/laba7_1.spec \
    rpm/laba7_1.yaml \
    translations/*.ts \
    laba7_1.desktop
QT += core
SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/laba7_1-de.ts

HEADERS += \
    src/counter.h \
    src/liststr.h


