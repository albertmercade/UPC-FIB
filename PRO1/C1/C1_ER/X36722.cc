#include <iostream>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(4);
    
    double usd = 0, eur = 0, er, q;
    string str;
    
    cin >> er;
    
    while (cin >> q >> str) {
        if (str == "USD") {
            usd += q;
            eur += q/er;
        }
        else if (str == "EUR") {
            eur += q;
            usd += q*er;
        }
    }
    
    cout << eur << ' ' << usd << endl;
}