#include <iostream>
#include <cmath>
using namespace std;

int rotacio_dreta(int x, int k) {
    int n = 0, digits = 0,g;
    
    //find out length int
    g = x;
    while(g!=0) {
        ++digits;
        g /= 10;
    }
    
    n = x % (int)pow(10,k);
    n = n * pow(10,digits-k) + x/pow(10,k);
    return n;
}

int main() {
    int n, rot;
    
    while(cin >> n >> rot) cout << rotacio_dreta(n,rot) << endl;
}