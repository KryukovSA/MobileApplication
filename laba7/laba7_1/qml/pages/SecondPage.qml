import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.appname.MyModule 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

ListStr{
    id: list1

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
                title: qsTr("listtask4")
            }

            TextField{
                id: tfld1
                font.capitalization : Font.AllLowercase
                label: "введите слово"

            }



            Button {
                id:addbutton
                width: parent.width
                text: "добавить слово"
                onClicked: {list1.addstr(tfld1.text); console.log(list1.getText()); lbl2.text = list1.getText()}
            }
            Button {
                id: resetbutton
                width: parent.width
                text: "удалить слово"
                onClicked: {list1.deletestr(); lbl2.text = list1.getText()}
            }
            Label{
                id: lbl2
                text: list1.getText()

            }


        }
    }
}
