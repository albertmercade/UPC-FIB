#include <iostream>
#include <cmath>
using namespace std;

int digits(int n) {
    int digNum = 0;
    while(n!=0) {
        n /= 10;
        ++digNum;
    }
    
    return digNum;
}

bool strobogramatic(int n) {
    
    if(n == 1 or n == 8 or n == 0) return true;
    
    int digNum = digits(n), pwr = pow(10,digNum-1);
    
    if ((n%10 == 6 and n/pwr == 9) or (n%10 == 9 and n/pwr == 6) or (n%10 == 1 and n/pwr == 1) or (n%10 == 8 and n/pwr == 8)) {
        n %= pwr;
        n /= 10;
        
        strobogramatic(n);
        return true;
    }
    return false;
}

int main() {
    int n, oddStrobo = 0;
    
    while(cin >> n) {
        bool strobo = strobogramatic(n);
        if(strobo) cout << n << " is strobogrammatic" << endl;
        else cout << n << " is not strobogrammatic" << endl;
        
        if(strobo and n%2 != 0) ++oddStrobo;
    }
    cout << endl << "odd strobogrammatic: " << oddStrobo << endl;
}
