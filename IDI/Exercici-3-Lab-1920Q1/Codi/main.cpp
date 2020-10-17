#include <QApplication>
#include "MyContrassenya.h"

int main(int argc, char **argv) {
    QApplication app(argc, argv);
    MyContrassenya form;
    form.show();
    return app.exec();
}
