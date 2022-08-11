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
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("firdpage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge

        Button {
        id: button1
        down: false

        color: "blue"
        text: "КнопкаПункта2"
        highlightBackgroundColor: "green"
        onClicked: {
            button1.down = true
        }
        }



        Button {
        id: button2
        down: false

        color: "blue"
        text: "КнопкаПункта3"
        highlightBackgroundColor: "green"
        onClicked: {
            button2.down = true
            text1.text = "нажата"
        }
        }

        Text {
            id: text1
            color: "white"
            text: "отпущена"
        }

        ValueButton {
            id:button3
        label: "Счетчик"
        description: "Считает количество нажатий"
        property int count: 0
        value: count
        onClicked: count++
        }





}






    }
}
