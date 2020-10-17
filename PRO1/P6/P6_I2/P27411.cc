#include <iostream>
using namespace std;

int main() {
    int n, c, count = 0;
    
    cin >> n;
    
    while (c != -1 and n>0) {
        cin >> c;
        if(c != -1) ++count;
        if(count == n and c != -1) cout << "At the position " << n << " there is a(n) " << c << '.' << endl;
    }
    
    if (n<1 or n>count) cout << "Incorrect position." << endl;
}
