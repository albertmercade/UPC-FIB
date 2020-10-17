#include <iostream>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(4);
    
    double n, p, total = 0;
    
    cin >> n;
    
    while (cin >> p) {
        total *= n;
        total += p;
    }

    cout << total << endl;
    
}