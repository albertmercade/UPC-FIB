#include <iostream>
using namespace std;

char maxThree (int a, int b, int c) {
    if (c>b and c>a) return 'c';
    else if (b>a) return 'b';
    else return 'a';
}

int main() {
    int a = 0,b = 0,c = 0, n;
    char k;
    
    cin >> n;
    
    for(int i = 0; i < n; ++i) {
        cin >> k;
        if (k == 'a') a += 1;
        else if (k == 'b') b += 1;
        else c += 1;
    }
    
    k = maxThree(a,b,c);
    
    if (k == 'a') cout << "majoria de a" << endl << a << " repeticio(ns)" << endl;
    else if(k == 'b') cout << "majoria de b" << endl << b << " repeticio(ns)" << endl;
    else cout << "majoria de c" << endl << c << " repeticio(ns)" << endl;
}