#include <iostream>
using namespace std;

int main() {
    int n, i = 0, ok = 0;
    
    while(ok == 0) {
        cin >> n;
        ++i;
        if(n%2 == 0) {
            cout << i << endl;
            ok = 1;
        }
    }
}