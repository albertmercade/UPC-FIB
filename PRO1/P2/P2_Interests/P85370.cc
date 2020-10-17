#include <iostream>
using namespace std;

int main() {

    cout.setf(ios::fixed);
    cout.precision(4);
    
    double c, i, t, total;
    string interest;
    
    cin >> c >> i >> t >> interest;
    
    total = c;
    
    if (interest == "simple") {
        for (int j = 0; j < t; ++j) {
            total += c*(i/100);
        }
        cout << total << endl;
    }
    else if (interest == "compound") {
        for (int j = 0; j < t; ++j) {
            total *= (1+(i/100));
        }
        cout << total << endl;
    }
    
}   