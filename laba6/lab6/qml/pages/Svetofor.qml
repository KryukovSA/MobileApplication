import QtQuick 2.0

Column {
    x: 200
    y: 200
    width: 100;
    height: 100;
   // spacing: 0//Theme.paddingLarge

    Rectangle {
         id: rect1

         width: 100// parent.width<parent.height?parent.width:parent.height
         height: width
         color: "black"
        // border.color: "black"
         border.width: 1
         radius: width*0.5

    }
    Rectangle {
         id: rect2

         width: 100// parent.width<parent.height?parent.width:parent.height
         height: width
         color: "black"
         //border.color: "black"
         border.width: 1
         radius: width*0.5

    }
    Rectangle {
         id: rect3

         width: 100// parent.width<parent.height?parent.width:parent.height
         height: width
         color: "black"
        // border.color: "black"
         border.width: 1
         radius: width*0.5

    }
}
