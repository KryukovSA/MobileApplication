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
                text: qsTr("Show Page 6")
                onClicked: pageStack.push(Qt.resolvedUrl("SixPage.qml"))
            }
        }
Row{
    x: 60
    spacing: 60


        Minutes {
        id: minutdigit
        countmin: 0

        }

        Seconds{
            id: secdigit
            count: 0
            }

Button {
    text: "start/stop"
    property int flag: 0
    onClicked: { if(flag == 0) { timer1.start(); flag++;}
        else if(flag % 2 == 1) {
            timer1.stop();
        flag++;
    }
    }
}

}

Timer {
    id: timer1
       interval: 1000;
       repeat: true
       onTriggered: { if(secdigit.count <= 59) secdigit.count++;
           else if (secdigit.count == 60)
                {minutdigit.countmin ++; secdigit.count = 0;}
   }



    }
}
}
