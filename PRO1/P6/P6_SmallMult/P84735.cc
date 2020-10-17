#include <iostream>
using namespace std;

int smallestMultiple(int a, int b) {
    int m;
    if(a%b == 0) m = a;
    else m = a/b*b + b;
    return m;
}

int main() {
    int i = 0, n,c;
    
    while (cin >> n >> c) {
        cout << '#' << ++i << " : " << smallestMultiple(n,c) << endl;
    }
}
