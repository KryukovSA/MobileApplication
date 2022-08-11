import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 4")
                onClicked: pageStack.push(Qt.resolvedUrl("fourPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.

    Row {
        spacing: 10
        Column {
            width: 200
            id: col1
                spacing: 10

            Rectangle {
                 id: rectangleRed
                 width: 200
                 height: 200
                 color:"red"
                    }

            Rectangle {
                 id: rectanglePink
                 width: 200
                 height: 200
                 color:"pink"

                    }
            }

                Rectangle {
                     id: rectangleGreen
                     width: 200
                     height: 200
                     color:"green"
                        }
                Column {
                    width: 200
                    id: col11
                        spacing: 10

                    Rectangle {
                         id: rectangleBlue
                         width: 200
                         height: 200
                         color:"blue"
                            }

                    Rectangle {
                         id: rectangleBlack
                         width: 200
                         height: 200
                         color:"Black"

                            }
                    }






           }


}
}


//}
