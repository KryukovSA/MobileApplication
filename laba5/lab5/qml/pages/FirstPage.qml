import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All



        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView


    ListModel {

        id: dataModel
        ListElement { color: "white"; text: "белый"; }
        ListElement { color: "black"; text: "черный"; }
        ListElement { color: "blue";  text: "голубой" }
    }
    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
            MenuItem {
                text: qsTr("Show Page 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixPage.qml"))
            }
        }
        anchors.fill: parent
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.color
            Text {
                anchors.centerIn: parent
                text: model.text
                color: "red"
            }
        }

        Button {
            y:600
            id:but1
            text: "setting стр 6"
            onClicked: pageStack.push(Qt.resolvedUrl("SixPage.qml"))
        }
        Button {
            y:450
            id:but2
            text: "setting стр 7"
            onClicked: pageStack.push(Qt.resolvedUrl("SevenPage.qml"))
        }

    }



}
