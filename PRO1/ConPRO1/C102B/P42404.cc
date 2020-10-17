#include <iostream>
using namespace std;

int main() {
    
    cout.setf(ios::fixed);
    cout.precision(2);
    
    double n;
    string cur;

    cin >> n >> cur;
    
    if (cur == "euros") {
        cout << n*1.254 << " dolars" << endl;
    }
    else {
        cout << n/1.254 << " euros" << endl;
    }
}