#include "MyLabel.h"

MyLabel::MyLabel(QWidget* parent=0) : QLabel(parent) {}

void MyLabel::ContraSlot(QString contra) {
    Contra = contra;
    if(Contra != ContraRepe) {
        setStyleSheet("background-color:rgb(255,0,0)");
        emit ValorText(1);
    }
    else if(Contra.length()<6) {
        setStyleSheet("background-color:rgb(255,255,0)");
        emit ValorText(2);
    }
    else {
        setStyleSheet("background-color:rgb(0,255,0)");
        emit ValorText(3);
    }
}

void MyLabel::ContraRepeSlot(QString contraRepe) {
    ContraRepe = contraRepe;
    if(Contra != ContraRepe) {
        setStyleSheet("background-color:rgb(255,0,0)");
        emit ValorText(1);
    }
    else if(ContraRepe.length()<6) {
        setStyleSheet("background-color:rgb(255,255,0)");
        emit ValorText(2);
    }
    else {
        setStyleSheet("background-color:rgb(0,255,0)");
        emit ValorText(3);
    }
}

void MyLabel::ContraIgual(int val) {
    if(val == 1) setText("Contrassenya no coincident");
    else if(val == 2) setText("Contrassenya de menys de 6 caràcters");
    else setText("Contrassenya vàlida");
}
