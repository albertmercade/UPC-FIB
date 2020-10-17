#include <iostream>
using namespace std;

int main() {
    int n;
    
    while(cin >> n) {
        cout << "The sum of the odd  digits of " << n << " is ";
        
        int sum = 0;
        while(n!=0) {
            if((n%10)%2 == 1) sum += n%10;
            n /= 10;
        }
        
        cout << sum << "." << endl;
    }
}
