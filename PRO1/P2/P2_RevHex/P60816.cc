#include <iostream>
using namespace std;

int main() {

    int a;
    
    cin >> a;
    
    if (a==0) cout << a;
    
    while (a>0) {
        int r;
        r = a%16;
        a /= 16;
        if (r>9) cout << char('A'+r-10);
        else cout << r;
    }

    cout << endl;
    
}