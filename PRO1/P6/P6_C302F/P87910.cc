#include <iostream>
using namespace std;

void morse(char c, int& n) {
    if(c == 'a') {
        cout << ".-";
        n -= 2;
    }
    else if(c == 'e') {
        cout << ".";
        n -= 1;
    }
    else if(c == 'i') {
        cout << "..";
        n -= 2;
    }
    else if(c == 'o') {
        cout << "---";
        n -= 3;
    }
    else {
        cout << "..-";
        n -= 3;
    }
}

int main() {
    char c;
    int n, n0;
    
    cin >> n0;
    
    n = n0;
    
    while(cin >> c) {
        morse(c,n);
        if(n<=0) {
            n = n0;
            cout << endl;
        }
    }
    
    if(n != n0) cout << endl;
    cout << "STOP" << endl;
}