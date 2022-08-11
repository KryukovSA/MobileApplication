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
TARGET = lab6

CONFIG += sailfishapp

SOURCES += src/lab6.cpp

DISTFILES += qml/lab6.qml \
    ../../Downloads/f5kn6kY-YZc.jpg \
    qml/cover/CoverPage.qml \
    qml/pages/ButtonCreator.qml \
    qml/pages/CheckPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/FivePage.qml \
    qml/pages/FourPage.qml \
    qml/pages/Minutes.qml \
    qml/pages/Pgstack.qml \
    qml/pages/Pgstackdel.qml \
    qml/pages/SecondPage.qml \
    qml/pages/Seconds.qml \
    qml/pages/SixPage.qml \
    qml/pages/Svetofor.qml \
    rpm/lab6.changes.in \
    rpm/lab6.changes.run.in \
    rpm/lab6.spec \
    rpm/lab6.yaml \
    translations/*.ts \
    lab6.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/lab6-de.ts
