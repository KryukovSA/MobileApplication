#ifndef LISTSTR_H
#define LISTSTR_H

#include<QObject>

class ListStr : public QObject{
    Q_OBJECT
    Q_PROPERTY(QString listst READ getText )
private:
  QList<QString> liststr;
public:
   ListStr();

   Q_INVOKABLE void addstr(QString str);
   Q_INVOKABLE void deletestr();
   Q_INVOKABLE QString getText();
   /*
private slots:
signals:
    void textChanged();*/


};











#endif // LISTSTR_H
