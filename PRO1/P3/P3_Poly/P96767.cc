#include <iostream>
#include <cmath>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(4);
    
    int i = 0;
    double x, p, total;
    
    cin >> x;
    
    while (cin >> p) {
        total += p * pow(x,i);
        ++i;
    }
    
    cout << total << endl;
}