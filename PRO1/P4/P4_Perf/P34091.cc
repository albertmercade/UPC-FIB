#include <iostream>
#include <cmath>
using namespace std;

bool is_perfect(int n) {
    if(n == 0) return false;
    
    int total = 0;
    
    for (int i = 2; i < (int)sqrt(n)+1; ++i) if (n%i == 0) total += i + n/i;
    
    if(n == 1) return false;
    else return total + 1 == n;
}

int main() {
    long long n;
    
    while (cin >> n) {
        if (is_perfect(n)) cout << "true" << endl;
        else cout << "false" << endl;
    }
}