#include <iostream>
using namespace std;

int main() {
    int n, c, i = 0;
    
    cin >> n;
    
    while(cin >> c) {
        ++i;
        if(i == n) cout << "At the position " << n << " there is a(n) " << c << "." << endl;
    }
    
    if(i<n or n<1) cout << "Incorrect position." << endl;
}
