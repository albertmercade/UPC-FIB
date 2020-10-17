#include <iostream>
using namespace std;

int main() {
    
    int a, b, n;
    
    cin >> a >> b;
    
    if (a<=b) {
        n = b - a + 1;
        for(int j = 0; j < n; ++j) {
            if (j<(n-1)) cout << a << ",";
            else cout << a << endl;
            ++a;
        }
    }
    
    else cout << endl;
    
}