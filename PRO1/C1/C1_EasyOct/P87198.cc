#include <iostream>
using namespace std;

int main() {
    int n;
    
    while (cin >> n) {
        for (int i = 0; i <= (n*3)-2 ; ++i) {
            if (i < n-1) cout << string((n-i-1),' ') << string(n + 2*i,'X') <<  endl;
            else if ((i >= n) and (i <= (2*n - 1))) cout << string((n*3)-2,'X') << endl;
            else if (i > (2*n - 1)) cout << string((i - 2*n + 1),' ') << string((7*n - 2*i - 4),'X') <<  endl;
        }
        cout <<  endl;
    }
}