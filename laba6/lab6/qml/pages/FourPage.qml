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
                text: qsTr("Show Page 5")
                onClicked: pageStack.push(Qt.resolvedUrl("FivePage.qml"))
            }
        }


ButtonCreator{
id:mybutton
width: 150
someColor: "yellow"

}
//mybutton.changeColor("yellow")




}
}
