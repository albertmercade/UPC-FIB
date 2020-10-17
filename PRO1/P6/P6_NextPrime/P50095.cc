#include <iostream>
#include <cmath>
using namespace std;

bool isPrime(int n) {
    if(n<=1) return false;
    for (int i = 2; i < int(sqrt(n))+1; ++i) {
        if(n%i == 0) return false;
    }
    return true;
}

int nextPrime (int n) {
    if(n == 2) return 3;
    int i = n+2;
    while(isPrime(i) != true) i += 2;
    return i;
}

int main() {
    int n;
    
    while (cin >> n) if(isPrime(n)) cout << nextPrime(n) << endl;
}
