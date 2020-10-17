#include <iostream>
using namespace std;

bool is_palindromic(int n) {
    int div = 1;
    while (n/div >= 10) div *= 10;
    while (n != 0) {
        int m = n/div;
        int k = n%10;
        if (m != k) return false;
        n = (n%div) / 10;
        div /= 100;
    }
    return true;
}

int main() {
    int n;
    
    while (cin >> n) {
        if (is_palindromic(n)) cout << "true" << endl;
        else cout << "false" << endl;
    }
}