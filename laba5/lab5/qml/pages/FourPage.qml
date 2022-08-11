import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All



        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView


    XmlListModel {
            id: xmlListModel
            source: "http://www.cbr.ru/scripts/XML_daily.asp"
            query: "/ValCurs/Valute"
            XmlRole { name: "Name"; query: "Name/string()"; }
            XmlRole { name: "Value"; query: "Value/string()"; }
            XmlRole { name: "CharCode"; query: "CharCode/string()"; }
        }
        SilicaListView {
            PullDownMenu {
                MenuItem {
                    text: qsTr("Show Page 5")
                    onClicked: pageStack.push(Qt.resolvedUrl("reservePage.qml"))
                }
            }
            anchors.fill: parent
            header: PageHeader { title: "валюты" }
            model: xmlListModel
            delegate: Column {
                x: 10; width: parent.width - 2 * x
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    text: Name
                }
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    text: Value
                }
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    text: CharCode
                }
            }
        }





}
