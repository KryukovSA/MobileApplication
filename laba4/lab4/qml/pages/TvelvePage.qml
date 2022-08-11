import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
   /* SilicaListView {
        anchors.fill: parent
        model: 5
        delegate: ListItem {
            id: delegate
           /* Label {
                x: Theme.paddingLarge
                text: "List Item #" + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                active: true
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    id:num1
                    text: "Menu Item 1    "
                    onClicked: console.log(num1.text + index)
                }
                MenuItem {
                    id:num2
                    text: "Menu Item 2    "
                    onClicked: console.log(num2.text + index)
                }
                MenuItem {
                    id: num3
                    text: qsTr("Show Page 13")
                    onClicked: pageStack.push(Qt.resolvedUrl("ElevenPage.qml"))
                }
            }
        }










        }*/

    SilicaListView {
        anchors.fill: parent
        model: 3
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "List Item #" + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }

    //        ComboBox { //без этого не работает
     //           x: 120
 //     visible: true
    //            id: list1
            menu: ContextMenu {
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    id:num1
                    text: "Menu Item 1    "
                    onClicked: console.log(num1.text + index)
                }
                MenuItem {
                    id:num2
                    text: "Menu Item 2    "
                    onClicked: console.log(num2.text + index)
                }
                MenuItem {
                    id: num3
                    text: qsTr("Show Page 1")
                    onClicked: pageStack.push(Qt.resolvedUrl("TvelvePage.qml"))
                }
            }

//}



        }
    }



    }
