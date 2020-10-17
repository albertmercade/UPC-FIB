#include <iostream>
#include <string>
using namespace std;

int decToB (int n, int b, int c, int digits) {
    //if n == 0 straight away
    if(n == 0 and digits == 0) {
        ++digits;
        cout << string(c-digits,'#');
        cout << 0;
        return digits;
    }
    
    //when n reaches 0
    if(n==0) {
        if(c == digits) return digits;
        else if(c > digits) {
            cout << string(c-digits,'#');
            return digits;
        }
        else {
           cout << string(c,'*');
           return c+1;
        }
    }
    // adds one digit
    ++digits;
    digits = decToB(n/b,b,c,digits);
    if(digits <= c) cout << n%b;
    return digits;
}

int main() {
    int n, b ,c;
    
    while(cin >> n >> b >> c) {
        int digits = 0;
        decToB(n,b,c,digits);
        cout << endl;
    }
}