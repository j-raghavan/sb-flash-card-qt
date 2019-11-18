#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include <qtwebengineglobal.h>


int main(int argc, char **argv)
{
    QCoreApplication::setOrganizationName("SamskritaBharati");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQuickStyle::setStyle(QStringLiteral("Material"));
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty(QStringLiteral("isEmbeded"), true);
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    return app.exec();
}
