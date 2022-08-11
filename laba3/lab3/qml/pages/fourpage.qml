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
                onClicked: pageStack.push(Qt.resolvedUrl("fivepage.qml"))
            }
        }

    ComboBox {
        x: 120
visible: true
        id: list1
    label: "Выпадающий список"
    description: "Описание выпадающего списка"
    menu: ContextMenu {
    MenuItem { text: "егкуо" }
    MenuItem { text: "еекк" }
    MenuItem { text: "ейукц" }
    }
    onCurrentIndexChanged: console.log(list1.value)
    }







    }
}
