#include <iostream>
using namespace std;

int sum_of_digits(int n) {
    int total = 0;
    while (n>0){
        total += n%10;
        n /= 10;
    }
    return total;
}

int reduction_of_digits(int n) {
    if(n>9) return reduction_of_digits(sum_of_digits(n));
    else return n;
}

int main() {
    int n;
    while (cin >> n) cout << reduction_of_digits(n) << endl;
}