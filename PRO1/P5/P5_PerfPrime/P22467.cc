#include <iostream>
#include <cmath>
using namespace std;

bool is_prime(int n) {
    if(n==0 or n==1) return false;
    for (int i = 2; i < (int)sqrt(n)+1; ++i) {
        if(n%i == 0) return false;
    }
    return true;
}

bool is_perfect_prime(int n) {
    if(n>9) {
        if (is_prime(n)) {
            int total = 0;
            while(n>0) {
                total += n%10;
                n /= 10;
            }
            return is_perfect_prime(total);
        }
        else return false;
    }
    else if(is_prime(n)) return true;
    else return false;
}

int main() {
    int n;
    while(cin >> n) {
        if (is_perfect_prime(n)) cout << "true" << endl;
        else  cout << "false" << endl;
    }
}