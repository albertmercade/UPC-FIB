#include <iostream>
using namespace std;

int main() {
    int n, total;
    
    while(cin >> n) {
        total = 0;
        while(n!=1) {
            if(n%2==0) {
                n /= 2;
                ++total;
            }
            else {
                n = n*3 + 1;
                ++total;
            }
        }
        cout << total << endl;
    }
}