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
                text: qsTr("Show Page 11")
                onClicked: pageStack.push(Qt.resolvedUrl("ElevenPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height
        ListModel {
                id: tasks
                ListElement { name: "обед"; date: "20.03.2021"; }
                ListElement { name: "прогулка"; date: "20.03.2021"; }
                ListElement { name: "работа"; date: "15.03.2021"; }
                ListElement { name: "тренировка"; date: "24.03.2021"; }
            }
        SlideshowView {
            id: view
            anchors.centerIn: parent
            height: width
            itemHeight: width; itemWidth: width;
            model: tasks
            delegate: Rectangle {
                width: view.itemWidth;
                height: view.itemHeight;
                Text {
                    anchors.centerIn: parent
                    text: "my  " + name; color: "green"}
                }
            }
        }




    }
