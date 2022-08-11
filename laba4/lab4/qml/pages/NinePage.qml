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
                text: qsTr("Show Page 10")
                onClicked: pageStack.push(Qt.resolvedUrl("TenPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        SilicaWebView {
                id: webView
                anchors {
                    top: parent.top; bottom: urlField.top;
                    left: parent.left; right: parent.right;
                }

                url: "http://sailfishos.org"
            }
            TextField {
                id: urlField
                anchors {
                    left: parent.left; right: parent.right;
                    bottom: parent.bottom
                }
                text: "http://sailfishos.org"
                label: webView.title
                EnterKey.onClicked: {webView.url = text;
                forcover = webView.url
                }
            }




    }
}
