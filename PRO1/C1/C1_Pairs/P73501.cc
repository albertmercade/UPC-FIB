#include <iostream>
using namespace std;

int main() {
    int n, p, q, total, f;
    
    cin >> n;
    
    for (int i = 0; i < n; ++i) {
        total = 0;
        f = 0;
        while (cin >> p) {
            if (f != 0) {
                if (p > q) ++total;
            }
            q = p;
            if (p == 0) break;
            ++f;
        }
        cout << total << endl;
    }
}