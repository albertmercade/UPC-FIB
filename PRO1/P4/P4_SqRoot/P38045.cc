#include <iostream>
#include <cmath>
#include <cstdio>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(6);
    
    int n;

    while (cin >> n) {
        double sr = pow(n,0.5);
        int sq = pow(n,2);
        
        cout << sq << ' ' << sr << endl;
    }
}