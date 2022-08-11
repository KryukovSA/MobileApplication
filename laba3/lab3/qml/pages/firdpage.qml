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
                text: qsTr("Show Page 4")
                onClicked: pageStack.push(Qt.resolvedUrl("fourpage.qml"))
            }
        }
Column{
        DatePicker {

            id:datePick1
        date: new Date(2012, 10, 23, 12, 0, 0)
        daysVisible: true
        weeksVisible: true
        }

        TimePicker {
        id: timePicker
        hour: 15
        minute: 26
        }

        Button {
        id: button2
        down: false

        color: "blue"
        text: "вывод даты"
        highlightBackgroundColor: "green"
        onClicked: console.log (datePick1.dateText, timePicker.timeText)
        }







}






    }
}
