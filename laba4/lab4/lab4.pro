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
TARGET = lab4

CONFIG += sailfishapp_qml

DISTFILES += qml/lab4.qml \
    ../../project1605/project/qml/pages/SixPage.qml \
    qml/cover/CoverPage.qml \
    qml/pages/EightPage.qml \
    qml/pages/ElevenPage.qml \
    qml/pages/ExampleDialog.qml \
    qml/pages/FirdPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/FivePage.qml \
    qml/pages/FourPage.qml \
    qml/pages/NinePage.qml \
    qml/pages/SecondPage.qml \
    qml/pages/SevenPage.qml \
    qml/pages/SixPage.qml \
    qml/pages/TenPage.qml \
    qml/pages/TvelvePage.qml \
    rpm/lab4.changes.in \
    rpm/lab4.changes.run.in \
    rpm/lab4.spec \
    rpm/lab4.yaml \
    translations/*.ts \
    lab4.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172


# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/lab4-de.ts
