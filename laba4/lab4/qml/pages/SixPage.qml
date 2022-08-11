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
                text: qsTr("Show Page 7")
                onClicked: pageStack.push(Qt.resolvedUrl("SevenPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

            Column {



                Button {
                    text: "Открыть диалог"
                    onClicked: {
                        var dialog = pageStack.push("Sailfish.Silica.DatePickerDialog",
                            {date: new Date(2017, 0, 1)});
                        dialog.accepted.connect(function() {
                            t1.text = dialog.date;
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
