#include <iostream>
using namespace std;

int main() {
    int n, c;
    
    while (cin >> n) {
        int count = 0;
        c = 0;
        while (c != -1) {
            cin >> c;
            if(c != -1) ++count;
            if(count == n and c != -1) cout << "At the position " << n << " there is a(n) " << c << '.' << endl;
        }
        
        if (n<1 or n>count) cout << "Incorrect position." << endl;
    }
}
