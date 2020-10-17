#include <iostream>
using namespace std;

int number_of_digits(int n) {
    int total = 0;
    
    if (n == 0) return total = 1;
    while (n != 0) {
        n /= 10;
        ++total;
    }
    
    return total;
}

int main() {
    int n;
    
    while (cin >> n) cout << number_of_digits(n) <<  endl;
}