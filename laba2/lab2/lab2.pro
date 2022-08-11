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
TARGET = lab2

CONFIG += sailfishapp
CONFIG += console

SOURCES += src/lab2.cpp

DISTFILES += qml/lab2.qml \
    qml/cover/CoverPage.qml \
    qml/pages/ExDialog.qml \
    qml/pages/FirdPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/FivePage.qml \
    qml/pages/SecondPage.qml \
    qml/pages/SevenPage.qml \
    qml/pages/SixPage.qml \
    qml/pages/fourPage.qml \
    rpm/lab2.changes.in \
    rpm/lab2.changes.run.in \
    rpm/lab2.spec \
    rpm/lab2.yaml \
    translations/*.ts \
    lab2.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/lab2-de.ts
