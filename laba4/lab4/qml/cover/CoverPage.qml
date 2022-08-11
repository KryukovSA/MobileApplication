import QtQuick 2.0
import Sailfish.Silica 1.0
import "../pages/NinePage.qml"


Cover {
    Label {
        id: coverLabel
        property int count: 0
        text: forcover
        anchors.centerIn: parent
    }
    CoverActionList {
    //    enabled: true

        CoverAction {
            id:covp1
            iconSource: "image://theme/icon-cover-new"
            onTriggered: coverLabel.text = forcover
        }
        CoverAction {
        id:covp2
            iconSource: "image://theme/icon-cover-cancel"
            onTriggered: coverLabel.count = 0
        }
    }

}
