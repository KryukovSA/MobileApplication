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
                text: qsTr("Show Page 1")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
        }


        Button {
            text: "Открыть диалог"
            onClicked: {
            var dialog = pageStack.push(Qt.resolvedUrl("ExDialog.qml"),
                {textField1: 7, textField2: 4});
            dialog.accepted.connect(function() {
                console.log(parseInt(dialog.textField1Value) + parseInt(dialog.textField2Value));
            });
            }
        }

  }



}


