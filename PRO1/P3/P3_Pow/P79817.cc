#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int a,b,a0;
    
    while(cin >> a >> b) {
        a0 = a;
        if(b == 0) a = 1;
        else {
            for(int i = 0; i < b-1; ++i) a *= a0;
        }
        
        cout << a << endl;
    }
    
}