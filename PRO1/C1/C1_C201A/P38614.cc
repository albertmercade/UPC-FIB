#include <iostream>
using namespace std;

int main() {
    int n, i = 1, total = 0;
    
    cin >> n;
    
    cout << n;
    
    while (n!=0) {
        if (i%2 != 0) total += n%10;
        n /= 10;
        
        ++i;
    }
    
    if (total % 2 == 0) cout << " IS COOL" << endl;
    else cout << " IS NOT COOL" << endl;
}