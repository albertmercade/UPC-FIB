#include <iostream>
using namespace std;

struct Fraction { 
    int num, den;
};

int gcd(int x, int y) {
    if(y == 0) return x;
    
    int q = 0;
    while(x>y) {
        x -= y;
        ++q;
    }
    
    int r = x - q*y;
    
    return gcd(y,r);
}

/*Fraction addition(const Fraction& x, const Fraction& y) {
    
}*/

int main() {
    /*int x,y;
    
    Fraction solution;
    f.num = 0, f.den = 0;
    
    Fraction f;
    char c;
    
    while(cin >> c and c != '=') {
        if(c>=48 and c<=57) {
            f.num = int(c) - 48;
            cin >> c;
            cin >> c;
            f.den = int(c) - 48;
            
            solution = addition(solution,f);
        }
    }*/
    
    cout << gcd(1071, 462) << endl;
}
