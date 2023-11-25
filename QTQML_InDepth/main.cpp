#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    enum class Configuration {
        Transformations,
        Anchorsystem,
    };

    const Configuration config{ Configuration::Anchorsystem };

    switch (config)
    {
    case Configuration::Anchorsystem:
        engine.load(QUrl(QStringLiteral("qrc:/qt/qml/qtqml_indepth/anchorsystem.qml")));
        break;
    case Configuration::Transformations:
        engine.load(QUrl(QStringLiteral("qrc:/qt/qml/qtqml_indepth/transformation.qml")));
        break;
    }
    
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
