#include <iostream>
using namespace std;

int main() {
    
    cout.setf(ios::fixed);
    cout.precision(6);
    
    const double pi = 3.141592653589793;
    string shape;
    double a, b;
    int n;
    
    cin >> n;
    
    for (int i = 0; i < n; ++i) {
        cin >> shape;
        
        if (shape == "rectangle") {
            cin >> a >> b;
            
            cout << a*b << endl;
        }
        else {
            cin >> a;
            cout << a*a*pi << endl;
        }
    }
}