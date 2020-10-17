#include <iostream>
#include <cmath>

using namespace std;

int main() {

    int num0, digits = 0, num, n, pwr;
    
    cin >> num0;
    
    for (int i = 2; i < 17; ++i) {
        num = num0;
        n = 0;
        pwr = pow(i,n);
        digits = 0;
        
        while(num%pwr != num) {
            ++n;
            pwr = pow(i,n);
            ++digits;
        }
        
        cout << "Base " << i << ": " << digits << " cifras." << endl;
    }

}