import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0
import Nemo.Configuration 1.0

Page{
    id:page
   // allowedOrientations: Orientation.All

 /*   SilicaListView {
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 7")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
        }
    }*/
        ConfigurationValue {
            id: setting
            key: "/sailfish/i18n/lc_timeformat24h"
        }
        Column {

            PageHeader { title: "Time for-t" }
            Label {
                //...
                text: setting.value + "-hour is selected"
            }
            Button {
                width: parent.width
                text: "12-hour"
                onClicked: setting.value = "12"
            }
            Button {
                width: parent.width
                text: "24-hour"
                onClicked: setting.value = "24"
            }
        }



}
