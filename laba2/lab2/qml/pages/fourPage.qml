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
                onClicked: pageStack.push(Qt.resolvedUrl("FivePage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.

Grid{

    columns: 3
    rows:1
    spacing: 10
    Grid{
        columns: 1
        rows:2
        id: grid1
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

    Grid{
        id: grid2
        columns: 1
        rows:1
        spacing: 10
        Rectangle {
             id: rectangleGreen
             width: 200
             height: 200
             color:"green"
                }
        }

    Grid{
        id: grid3
        columns: 1
        rows:2
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
