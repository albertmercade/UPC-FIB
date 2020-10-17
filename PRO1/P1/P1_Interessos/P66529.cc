#include <iostream>
using namespace std;

int main() {
    
    cout.setf(ios::fixed);
    cout.precision(4);
    
    double i, c = 1000, tae;
    string period;
    
    cin >> i >> period;
    
    if (period == "setmanal") {
       for(int j = 0; j < 52; ++j) {
           c = c + c * i/(52*100);
       }
       tae = 100 * (c-1000)/1000;
    }
    
    else if (period == "mensual") {
        for(int j = 0; j < 12; ++j) {
           c = c + c * i/(12*100);
       }
       tae = 100 * (c-1000)/1000;
    }
    
    else if (period == "trimestral") {
        for(int j = 0; j < 4; ++j) {
           c = c + c * i/(4*100);
       }
       tae = 100 * (c-1000)/1000;
    }
    
    else if (period == "semestral") {
        for(int j = 0; j < 2; ++j) {
           c = c + c * i/(2*100);
       }
       tae = 100 * (c-1000)/1000;
    }
    
    cout << tae << endl;

}