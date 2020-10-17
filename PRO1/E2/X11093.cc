#include <iostream>
using namespace std;
// define here additional functions and/or procedures
// if you need them

// Pre: 0<=d<=9 and 0<=x.
void write_digit(int d,int x) {
    // insert here your (ITERATIVE) code
    
    for(int i = 0; i < x; ++i) cout << d;
}

// Pre: 0<n.
void write_expanded(int n) {
    // insert here your (ITERATIVE) code
    int x = n, digits = 0;
    
    while(x>0) {
        ++digits;
        x /= 10;
    }
    
    for(int i = digits-1; i>=0; --i) {
        int pwr = 1;
        for(int j = 0; j < i; ++j) pwr *= 10;
        write_digit((n/pwr)%10, (n/pwr)%10 + 1);
    }
    
}

int main() {
    int n;
    while (cin >> n) {
        write_expanded(n);
        cout << endl;
    }
}
