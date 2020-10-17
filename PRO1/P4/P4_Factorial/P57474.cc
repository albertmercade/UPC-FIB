#include <iostream>
using namespace std;

int factorial (int n) {
    int total = 1;

    for (int i = 1; i <= n; ++i) total *= i;

    return total;
}

int main() {
    int n;

    while (cin >> n) cout << factorial(n) << endl;
}