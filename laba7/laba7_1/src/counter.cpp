#include "counter.h"

MyCounter::MyCounter() : QObject(){

}



void MyCounter::add(){
    myvalue++;
}

void MyCounter::reset(){
    myvalue = 0;
}

int MyCounter::getVal(){
    return  myvalue;
}

void MyCounter::setcount(int num) {
    myvalue = num;
}
