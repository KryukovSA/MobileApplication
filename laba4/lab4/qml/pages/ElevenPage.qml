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
                id: mi1
                text: qsTr("Show Page 12")
                onClicked: pageStack.push(Qt.resolvedUrl("TvelvePage.qml"))
            }
            MenuItem {
                id: mi2
                text: qsTr("текст для показа при клике")
                onClicked: text1.text = mi2.text
            }
        }

        Text {
            id: text1
            text: "текст из  меню"
            color: "white"
        }

        PushUpMenu {

            MenuItem {
                id: mi3
                text: "Menu Item 1"
                onClicked: text1.text = mi3.text
            }
            MenuItem {
                id: mi4
                text: "Menu Item 2"
               onClicked: text1.text = mi4.text
            }
        }











        }




    }
