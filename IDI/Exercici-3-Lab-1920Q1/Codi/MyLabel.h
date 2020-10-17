#include <QLabel>
#include <QString>

class MyLabel : public QLabel {
    Q_OBJECT
    public:
        MyLabel (QWidget* parent);
        QString Contra, ContraRepe;
    public slots:
        void ContraSlot(QString);
        void ContraRepeSlot(QString);
        void ContraIgual(int);
    signals:
        void ValorText(int);
};
