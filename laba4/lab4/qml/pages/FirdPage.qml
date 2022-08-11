import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FivePage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

            Column {
                anchors.fill: parent
                anchors.margins: Theme.paddingMedium
                spacing: Theme.paddingMedium
                PageHeader {
                    title: "первая страница"
                }

                Button {
                    id:but1
                    text: "добавить страницу"
                    onClicked: pageStack.pushAttached(Qt.resolvedUrl("FourPage.qml"))
                }

                Button {
                    id:but2
                    text: "убрать страницу"
                    onClicked: pageStack.popAttached()

                }


            }






    }
}
