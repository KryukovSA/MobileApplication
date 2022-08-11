import QtQuick 2.0
import Sailfish.Silica 1.0

Label {
default property  int countdel: 0
    id: delpg

signal delPG(string str)

text: countdel

}
