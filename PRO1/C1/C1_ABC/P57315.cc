#include <iostream>
using namespace std;

int main () {
    int a = 0, b = 0, c = 0,n;
    char d;
    
    for (int i = 0; i < 3; ++i) {
        cin >> n;
        if(n>c) {
            a = b;
            b = c;
            c = n; 
        }
        else if (n>b) {
            a = b;
            b = n;
        }
        else {
            a = n;
        } 
    }
    
    for(int i = 0; i < 3; ++i) {
        cin >> d;
        if (d == 'A') cout << a;
        else if (d == 'B') cout << b;
        else cout << c;
        if(i == 0 or i == 1) cout << " ";
    }
    
    cout <<  endl;
}