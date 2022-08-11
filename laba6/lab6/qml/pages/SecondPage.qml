import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }
        Image {
        source: "pics/qtlogo.png"
        }

    Item {
        id: item1
        Text {
            x:200
            y:100
            id: text1
            font.pixelSize: 70
            text: qsTr("Hello")
            color: "green"
        }

        ParallelAnimation{
            id: animation1


        NumberAnimation { target: text1; property: "y"; to: 1100; duration: 3000 }
        RotationAnimation { target: text1; from: 0; to: 180; duration: 3000}
        ColorAnimation{ target: text1; property: "color"; to: "yellow"; duration: 3000 }

      }


                ParallelAnimation{
                    id: animation1revers


                NumberAnimation { target: text1; property: "y"; to: 100; duration: 3000 }
                RotationAnimation { target: text1; from: 180; to: 0; duration: 3000}
                ColorAnimation{ target: text1; property: "color"; to: "green"; duration: 3000 }

              }

        MouseArea {
        anchors.fill: text1
        id:mouseArea

        onPressed: animation1.start()
        onReleased: animation1revers.start()
        }




    }





    }
}
