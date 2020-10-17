#include <iostream>
using namespace std;

void swap2 (int& a, int& b) {
    int n;
    
    n = a;
    a = b;
    b = n;
}

int main() {
    int a,b;
    
    while (cin >> a >> b) {
        swap2(a,b);
        cout << a << ' ' << b << endl;
    }
}