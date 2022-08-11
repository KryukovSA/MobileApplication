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
                text: qsTr("Show Page 9")
                onClicked: pageStack.push(Qt.resolvedUrl("NinePage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        ListModel {
                id: tasks
                ListElement { name: "обед"; date: "20.03.2021"; }
                ListElement { name: "прогулка"; date: "20.03.2021"; }
                ListElement { name: "работа"; date: "15.03.2021"; }
                ListElement { name: "тренировка"; date: "24.03.2021"; }
            }
            SilicaListView {
                anchors.fill: parent
                model: tasks
                header: PageHeader { title: "Задачи" }
                section {
                    property: 'date'
                    delegate: SectionHeader { text: section }
                }
                delegate: Text { text: name; color: "green"}
            }
    }
}
