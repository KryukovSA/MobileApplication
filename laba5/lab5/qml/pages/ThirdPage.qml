import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All



        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView


    property var dataModel: [
        { color: "white", text: "белый" },
        { color: "black", text: "черный"},
        { color: "blue",  text: "голубой"}
       ]
       SilicaListView {
           anchors.fill: parent

           PullDownMenu {
               MenuItem {
                   text: qsTr("Show Page 4")
                   onClicked: pageStack.push(Qt.resolvedUrl("FourPage.qml"))
               }
           }
           model: dataModel
           spacing: 10
           delegate: Rectangle {
               width: parent.width
               height: 100
               color: modelData.color
               Text {
                   anchors.centerIn: parent
                   text: modelData.text
               }
           }
       }




}
