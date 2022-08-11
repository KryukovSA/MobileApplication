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


        TextSwitch {
            id: ts1
            x: 100
            checked: flase
        text: (checked ? "включен" : "выключен" )

        }


        Slider {
            id: slider1
            y:200
            down: true
        width: parent.width
        enabled: ts1.checked
        highlighted: true
        handleVisible: true
        label: "текущее значение  " + value
        maximumValue: 40
        minimumValue: -10
        value: 10
        stepSize: 1

        }









    }
}
