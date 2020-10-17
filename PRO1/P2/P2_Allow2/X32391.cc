#include <iostream>
using namespace std;

int main() {
    int d, n, t, w, total = 0;
    
    cin >> d >> n >> t;
    
    while (cin >> w) {
        n += w - d;
        if (n>0) ++total;
    }
    
    cout << total << endl;
}