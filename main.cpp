#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "calculator.h"

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    Calculator calculator;
    engine.rootContext()->setContextProperty("calculator", &calculator);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
