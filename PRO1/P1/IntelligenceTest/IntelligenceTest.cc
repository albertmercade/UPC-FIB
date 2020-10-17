#include <iostream>
using namespace std;

int main() {
    string respuesta;
    int puntos = 0;
    cout << "Quin es el següent valor de la sèrie 1,4,9,16,25,...?" << endl;
    cin >> respuesta;
    if (respuesta == "36") puntos = puntos + 20;
    
    cout << "Si ordenem les lletres de la paraula NAPIKATS, obtenim el nom dúna ciutat, un país, un animal, o unba planta?" << endl;
    cin >> respuesta;
    if (respuesta == "país" or respuesta=="País" or respuesta == "PAÍS") puntos = puntos + 20;
    
    cout << "L'afirmació \"si tots els pamfs son flurs i alguns mops son flurs, llavors tots els pamfs son clarament mops\" és certa la resposta?" << endl;
    cin >> respuesta;
    if (respuesta == "fals" or respuesta=="FALS" or respuesta=="Fals") puntos = puntos + 20;
    
    cout << "Quina és la meitat de l'arrel quadrada de 144?" << endl;
    cin >> respuesta;
    if (respuesta == "6") puntos = puntos + 20;
    
    cout << "Quina és la meitat d'un desena part de la meitat de 600?" << endl;
    cin >> respuesta;
    if (respuesta == "30") puntos = puntos + 20;
    
    cout << "Puntuaciuó final: " << puntos << "/100" << endl;
    
}
