#ifndef QLOCALDEVICE_H
#define QLOCALDEVICE_H

#include <qdebug.h>
#include <qobject.h>

class QLocalDevice : public QObject
{
    Q_OBJECT

public:
    QLocalDevice(QObject *parent = Q_NULLPTR);
    ~QLocalDevice();
    Q_INVOKABLE bool postMessage(const QString &msg)
    {
        qDebug() << "Called the C++ method with" << msg;
        return true;
    }
    bool isConnectedToNetwork();

public Q_SLOTS:
    void reboot();
    void powerOff();
    void terminal();
};

#endif // QLOCALDEVICE_H
