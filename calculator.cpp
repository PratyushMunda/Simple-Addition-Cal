#include "calculator.h"

Calculator::Calculator(QObject *parent) : QObject(parent), m_result(0) {}

void Calculator::addNumbers(int num1, int num2) {
    m_result = num1 + num2;
    emit resultChanged();
}

int Calculator::result() const {
    return m_result;
}
