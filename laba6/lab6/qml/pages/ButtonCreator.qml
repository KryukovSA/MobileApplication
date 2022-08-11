import QtQuick 2.0

Item{
default property var someColor
  //  default property var someText: "1213"
Rectangle {
    id: rectangle
    width: 400; height: 100

    Text{text: txt1.text }


    color: someColor
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Clicked!")
    }

}


Text {
   id: txt1
   text: "button " // + someText.text
   color: "red"
}

}
