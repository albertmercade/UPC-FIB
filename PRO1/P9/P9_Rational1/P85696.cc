#include <iostream>
#include <algorithm>
using namespace std;

struct Rational {
    int num, den;
};

Rational simplify(int& n, int& d) {
    int div = __gcd(n,d);
    
    Rational r;
    if(d/div < 0) r.num = -n/div, r.den = -d/div;
    else r.num = n/div, r.den = d/div;
    
    
    return r;
}

Rational rational(int n, int d) {
    Rational r;
    if(n==0) {
        r.num = 0, r.den = 1;
        return r;
    }
    else {
        return simplify(n,d);
    }
}

int main() {
    int n,d;
    
    cin >> n >> d;
    
    Rational result = rational (n,d);
    
    cout << result.num << '/' << result.den << endl;
}
