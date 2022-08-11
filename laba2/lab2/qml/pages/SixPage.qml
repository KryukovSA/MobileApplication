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

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.

Item{
        Rectangle {
             id: rectangleRed
             x: 100
             y: 100
             width: 200
             height: 200
             color:"red"

             Text{
             anchors.centerIn: parent
             text: "Квадрат"
             color: "white"

             }
             ParallelAnimation{
             running: true
             NumberAnimation { target: rectangleRed; property: "x"; to: 200; duration: 1000 }
             NumberAnimation { target: rectangleRed; property: "y"; to: 800; duration: 1000 }
             NumberAnimation { target: rectangleRed; property: "width"; to: 400; duration: 1000 }
              NumberAnimation { target: rectangleRed; property: "height"; to: 400; duration: 1000 }


           }
        }


}


    }
}
