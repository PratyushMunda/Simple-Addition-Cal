#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QObject>

class Calculator : public QObject {
    Q_OBJECT
    Q_PROPERTY(int result READ result NOTIFY resultChanged)

public:
    explicit Calculator(QObject *parent = nullptr);
    Q_INVOKABLE void addNumbers(int num1, int num2);
    int result() const;

signals:
    void resultChanged();

private:
    int m_result;
};

#endif
