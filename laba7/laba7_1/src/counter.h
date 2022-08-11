#ifndef COUNTER_H
#define COUNTER_H

#include<QObject>

class MyCounter : public QObject{
    Q_OBJECT
    Q_PROPERTY(int myvalue READ getVal WRITE setcount )
private:
   int myvalue;
public:
   MyCounter();
  // MyCounter(int num_);
   Q_INVOKABLE void add();
    Q_INVOKABLE void reset();
   Q_INVOKABLE int getVal();
   Q_INVOKABLE void setcount(int num);
   /*
private slots:
signals:
    void textChanged();*/


};
#endif // COUNTER_H
