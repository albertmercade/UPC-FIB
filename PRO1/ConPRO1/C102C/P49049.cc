#include <iostream>
using namespace std;

int main() {
    
    cout.setf(ios::fixed);
    cout.precision(2);
    
    double n;
    string cur;

    cin >> n >> cur;
    
    if (cur == "milles") {
        cout << n*1.6093 << " quilometres" << endl;
    }
    else {
        cout << n/1.6093 << " milles" << endl;
    }
}