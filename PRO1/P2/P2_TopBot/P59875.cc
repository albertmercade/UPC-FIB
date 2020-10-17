#include <iostream>
using namespace std;

int main() {
    
    int x, y, n;
    
    cin >> x >> y;
    
    if (x>y) {
        n = x - y + 1;
        for(int j = 0; j < n; ++j) {
            cout << x << endl;
            --x;
        }
    }
    
    else if (y>x) {
        n = y - x + 1;
        for(int j = 0; j < n; ++j) {
            cout << y << endl;
            --y;
        }
    }
    
    else cout << x << endl;
}