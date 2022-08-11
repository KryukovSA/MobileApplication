import QtQuick 2.0
import Sailfish.Silica 1.0




/*   Column{
        id: col1


        spacing: 30*/

Label {
default property  int countadd: 0
    id: addpg

signal addPG(string num)

text: countadd
MouseArea {
    anchors.fill: parent
    onClicked: {
        addpg.addPG("add");
        console.log(countadd);

    }
}
}


