#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int b, n, total;
    
    cin >> b;
    
    while(cin >> n) {
        cout << n << ": ";
        total = n%b;
        while(n/b > 0) {
            n = n/b;
            total += n%b;
            if(n/b == 0) total += (n/b);
        }
        cout << total << endl;
    }
}