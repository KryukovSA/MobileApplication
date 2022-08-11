import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    PullDownMenu {
        MenuItem {
            text: qsTr("Show Page 3")
            onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
        }
    }

    ListModel { id: dataModel

    }

    Column { //...

        Button {
            x:400
        id: addButton
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Add item"
        onClicked: dataModel.append({ text: "Item  " })
        }



        SilicaListView {

        y:200
            width: parent.width; height: parent.height - addButton.height;

            model: dataModel
            delegate: Rectangle {
                width: parent.width; height: 70; color: "skyblue";
                Text {
                    anchors.centerIn: parent
                    text: model.text + " " + model.index

                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {dataModel.clear()}

                }

            }

        }

    }

}
