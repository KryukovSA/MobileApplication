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
                text: qsTr("Show Page 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

            Column {



                Button {
                    text: "Открыть диалог"
                    onClicked: {
                    var dialog = pageStack.push(Qt.resolvedUrl("ExampleDialog.qml"),
                        {firstTextFieldValue: 2, secondTextFieldValue: 3});
                    dialog.accepted.connect(function() {
                        t1.text = dialog.firstTextFieldValue;
                    });
                    }
                }

                Text {
                    id: t1
                    color: "red"
                    text: "здесь будет введенный текст"
                }





            }
    }
}
