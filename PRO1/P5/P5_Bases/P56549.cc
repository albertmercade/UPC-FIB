#include <iostream>
using namespace std;

void decToBin (int n) {
    if(n==0) return;
    decToBin(n/2);
    cout << n % 2;
}

void decToOct (int n) {
    if(n==0)  return;
    decToOct(n/8);
    cout << n % 8;
}

void decToHex (int n) {
    if(n==0) return;
    decToHex(n/16);
    if (n%16 > 9) cout << (char)(n%16 + 55);
    else cout << n % 16;
}

int main() {
    int n;
    while (cin >> n) {
        cout << n << " = ";
        if (n>0) decToBin(n);
        else cout << 0;
        cout << ", ";
        if (n>0) decToOct(n);
        else cout << 0;
        cout << ", " ;
        if (n>0) decToHex(n);
        else cout << 0;
        cout<< endl;
    }
}