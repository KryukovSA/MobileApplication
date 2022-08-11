import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.appname.MyModule 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

MyCounter{
    id:counter
   Component.onCompleted: counter.setcount(30)
}


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
        Column {
            id: column

            width: page.width
            anchors.fill: parent

            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("countertask4")
            }

            Label {
                id: lbl1
               // x: Theme.horizontalPageMargin
                text: counter.getVal()
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Button {
                id:addbutton
                width: parent.width
                text: "увеличить"
                onClicked: {counter.add(); lbl1.text = counter.getVal()}
            }
            Button {
                id: resetbutton
                width: parent.width
                text: "сбросить"
                onClicked: {counter.reset(); lbl1.text = counter.getVal()}
            }


        }
    }
}
