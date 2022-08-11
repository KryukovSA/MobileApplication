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
                onClicked: pageStack.push(Qt.resolvedUrl("FirdPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.


            Rectangle {
                 id: rectangleR
                 width: 200
                 height: 200
                 color:"red"
                    }

            Rectangle {
                 id: rectangleG
                 x: 200
                 y: 100
                 width: 200
                 height: 200
                 color:"green"

                    }

            Rectangle {
                 id: rectangleBl
                 x: 300
                 width: 200
                 height: 200
                 color:"blue"

                 Text{
                 anchors.centerIn: parent
                 text: "Квадрат"
                 color: "white"

                 }
                    }



         //   }




    }
}
