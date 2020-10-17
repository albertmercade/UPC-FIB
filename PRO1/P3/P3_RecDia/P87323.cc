#include <iostream>
using namespace std;

int main() {
    int r, c, a, b;
    
    cin >> r >> c;
    
    for (int i = 0; i < r; ++i) {
        a = i;
        b = -1;
        for (int j = 0; j < c; ++j, a+=b) {
            if (a == 0) b = 1;
            cout << a%10;
        }
        cout << endl;
    }
    
    
    
}