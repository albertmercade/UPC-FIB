#include <iostream>
using namespace std;

int main() {
    int n, c, i = 1;
    
    cin >> n;
    
    while(cin >> c and c != -1) {
        if(i == n) cout << "At the position " << n << " there is a(n) " << c << "." << endl;
        ++i;
    }
}
