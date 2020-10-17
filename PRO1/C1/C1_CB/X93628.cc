#include <iostream>
using namespace std;

int main() {
    int n;
    
    while (cin >> n) {
        for (int i = 1; i <= n; ++i) {
            for (int j = 1; j <= n; ++j) {
                if (i%2 != 0) {
                    if (j%2 != 0) cout << '.';
                    else cout << 'x';
                }
                else {
                    if (j%2 != 0) cout << 'x';
                    else cout << '.';
                }
            }
            cout <<  endl;
        }
        cout << endl;
    }
}