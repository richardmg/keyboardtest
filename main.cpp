#include <QtQuick>

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

//    app.primaryScreen()->setOrientationUpdateMask(Qt::PortraitOrientation | Qt::LandscapeOrientation);

//    QQuickView view(QUrl("qrc:/main.qml"));
//    view.setResizeMode(QQuickView::SizeRootObjectToView);

//    view.show();

    QQmlApplicationEngine engine(QUrl("qrc:/main.qml"));
    QObject *topLevel = engine.rootObjects().value(0);

    QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel);
    if ( !window ) {
        qWarning("Error: Your root item has to be a Window.");
        return -1;
    }
//    window->setGeometry(50, 50, 640, 1024);
//    window->showNormal();
    window->show();

    return app.exec();
}


