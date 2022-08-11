#ifdef QT_QML_DEBUG
#include <QtQuick>
#include <QGuiApplication>

#include <QMetaObject>
#include <sailfishapp.h>
#include "counter.h"
#include <iostream>
#include "liststr.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<MyCounter>("harbour.appname.MyModule", 1, 0, "MyCounter");
    qmlRegisterType<ListStr>("harbour.appname.MyModule", 1, 0, "ListStr");

  //  qRegisterMetaType<MyCounter>();
    // SailfishApp::main() will display "qml/laba7_1.qml", if you need more
    // control over initialization, you can use:
    //
    //   - SailfishApp::application(int, char *[]) to get the QGuiApplication *
    //   - SailfishApp::createView() to get a new QQuickView * instance
    //   - SailfishApp::pathTo(QString) to get a QUrl to a resource file
    //   - SailfishApp::pathToMainQml() to get a QUrl to the main QML file
    //
    // To display the view, call "show()" (will show fullscreen on device).


    MyCounter counter;
    counter.reset();
    counter.add();
    counter.add();
    std::cout << counter.getVal() << "\n";
    qDebug() << counter.getVal();
/*
    QMetaObject  cntrMeta = MyCounter::staticMetaObject;//metaObject();
    cntrMeta.newInstance(Q_ARG(int, 1));

    cntrMeta.invokeMethod(cntrMeta, "add", Q_ARG(int,10) ) ;*/

    return SailfishApp::main(argc, argv);
}
#endif
