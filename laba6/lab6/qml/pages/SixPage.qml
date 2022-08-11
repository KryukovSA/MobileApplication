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
                text: qsTr("Show Page 1")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
        }

        Column {
            anchors.fill: parent
            anchors.margins: Theme.paddingMedium
            spacing: 40
            PageHeader {
                title: "страница"
            }

            Button {
                id:but1
                text: "вперед"
                onClicked: { pageStack.push(Qt.resolvedUrl("CheckPage.qml"));
                ps1.countadd++;
                   // onAddPG(console.log("add"))
                }
            }

            Button {
                id:but2
                text: "назад"
                onClicked:{ pageStack.pop(Qt.resolvedUrl("CheckPage.qml"));
                psd1.countdel++;
                }

            }

            Text {
                id:tex
                color: "red"
            text:"глубина стека " + pageStack.depth
            }

           Pgstack {
            id: ps1
            countadd: 0
            onAddPG: console.log("add")
            }
           Pgstackdel{
           id: psd1
           countdel: 0
           }
        }






    }
}
