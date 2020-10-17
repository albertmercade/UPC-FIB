#include <iostream>
#include <cmath>
using namespace std;

int main() {
    
    int b, n, i=1, pwr, pwr2=1;
    
    while(cin >> b >> n) {
        i = 0;
        pwr = pow(b,i);
    
        while(!(n>=pwr2 and n<pwr)) {
            ++i;
            pwr2 = pwr;
            pwr = pow(b,i);
        }
        
        cout << i << endl;
    }
    
}