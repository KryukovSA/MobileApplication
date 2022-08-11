import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0
import Nemo.Configuration 1.0

Page{

id:page1

ConfigurationGroup {
    id: settings
    path: "/apps/app_name/settings"
    property bool bold: false
    property bool strikeout: false
}
Column {
    //...
    Label {
        //...
        text: "ТПМС                             "
        font.bold: settings.bold
        font.strikeout: settings.strikeout
    }
    Button {
        width: parent.width; text: "Bold";
        onClicked: settings.bold = !settings.bold
    }
    Button {
        width: parent.width; text: "Strikeout";
        onClicked: settings.strikeout = !settings.strikeout
    }
}

}
