import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
id: dialog1
visible: true

DialogHeader { }
property alias textField1Value: textField1.text
property alias textField2Value: textField2.text



   Label{
        id: label1
       y: 200
        text:"Введите число"
    }



    TextField{
        y:300
    id: textField1
    width: parent.width
    }

    Label{
        id:label2
        y: 400
        color: Theme.secondaryHighlightColor
        text:"Введите число"
    }

    TextField{
        y:500
    id: textField2
    width: parent.width
    }



  }
