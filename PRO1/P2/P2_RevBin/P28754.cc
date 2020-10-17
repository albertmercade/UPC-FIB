#include <iostream>
using namespace std;

int main() {

    int a;
    
    cin >> a;
    
    if (a==0) cout << a;
    
    while (a>0) {
        cout << a%2;
        a /= 2;
    }

    cout << endl;
    
}