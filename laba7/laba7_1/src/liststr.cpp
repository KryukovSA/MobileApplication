#include "liststr.h"
#include <cctype>
#include <locale>

ListStr::ListStr() : QObject(){

}

void ListStr::deletestr(){
    liststr.removeLast();
}

void ListStr::addstr(QString str){
    liststr.append(str);
}

QString ListStr::getText() {
    QString tmpstr = "";
    for(int i = 0; i < liststr.size(); i++) {
        if (i == liststr.size()) {
            tmpstr += liststr.at(i);
        }
        else{
            tmpstr += liststr.at(i) + ",";
        }
    }
    tmpstr[0] = tmpstr[0].toUpper();
    return tmpstr;
}
