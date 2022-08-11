import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0


Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    property var names;

    function loadNews() {
        var xhr = new XMLHttpRequest();

        xhr.open('GET', 'http://www.cbr.ru/scripts/XML_daily.asp', true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
//xmlListModel.xml = xhr.responseText;
                var result = JSON.parse(xhr.responseText);
                xmlListModel.xml = result.response;
            }
        }
        xhr.send();
    }







    XmlListModel {
            id: xmlListModel

            query: "/ValCurs/Valute"
            XmlRole { name: "Name"; query: "Name/string()"; }
            XmlRole { name: "Value"; query: "Value/string()"; }

        }
        SilicaListView {
            PullDownMenu {
                MenuItem {
                    text: qsTr("Show Page 2")
                    onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
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
            }
        }



        Component.onCompleted: loadNews()


}

