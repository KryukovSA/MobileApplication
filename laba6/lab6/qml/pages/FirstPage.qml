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
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Image {
            width: parent.width/4
           // source: "C:\Users\HP-PC\node_modules\@abandonware\noble\assets\ noble-logo.png"
           //  source: "Downloads\f5kn6kY-YZc.jpg"
            source: "icons\f5kn6kY-YZc.jpg"
        }


        Item{
            id: item1


        Column {
            id: column1
            x: 200
            y: 200
            width: page.width
           // spacing: 0//Theme.paddingLarge

            state: "redcolor"

            Rectangle {
                 id: rect1

                 width: 100// parent.width<parent.height?parent.width:parent.height
                 height: width
                 color: "black"
                // border.color: "black"
                 border.width: 1
                 radius: width*0.5

            }
            Rectangle {
                 id: rect2

                 width: 100// parent.width<parent.height?parent.width:parent.height
                 height: width
                 color: "black"
                 //border.color: "black"
                 border.width: 1
                 radius: width*0.5

            }
            Rectangle {
                 id: rect3

                 width: 100// parent.width<parent.height?parent.width:parent.height
                 height: width
                 color: "black"
                // border.color: "black"
                 border.width: 1
                 radius: width*0.5

            }


            states: [
                State {
                    name: "redcolor"

                    PropertyChanges {target: rect1; color: "red"}
                    PropertyChanges {target: rect2; color: "black"}
                    PropertyChanges {target: rect3; color: "black"}
                },

                State {
                    name: "yelowcolor"

                    PropertyChanges {target: rect1; color: "black"}
                    PropertyChanges {target: rect2; color: "yellow"}
                    PropertyChanges {target: rect3; color: "black"}
                },
                State {
                    name: "greencolor"

                    PropertyChanges {target: rect1; color: "black"}
                    PropertyChanges {target: rect2; color: "black"}
                    PropertyChanges {target: rect3; color: "green"}
                }

            ]

        //    transitions: [
            //    Transition {

          SequentialAnimation{//
            alwaysRunToEnd: true
            loops: Animation.Infinite
            running: true
/*ColorAnimation{ target: rect1; property: "color"; to: "red"; duration: 3000 }
ColorAnimation{ target: rect2; property: "color"; to: "yellow"; duration: 3000 }
ColorAnimation{ target: rect3; property: "color"; to: "green"; duration: 3000 }
  */

         PropertyAnimation { target: column1; property: column1.state; from:column1.state = "redcolor"; to: column1.state = "yelowcolor";  duration: 3000 }
            PropertyAnimation { target: column1; property: column1.state = "yelowcolor"; duration: 1000 }
            PropertyAnimation {target: column1; property: column1.state = "greencolor"; duration: 1000 }
        }





              // },


         //   Transition {
           //     }
          //  ]



        }



        }//item
    }
}
