#include <iostream>
#include <string>
using namespace std;

int main() {
    int n;
    
    while(cin >> n) {
        if (n>0) {
            for (int i = 1; i <= n; ++i) {
                for (int k = 0; k < 2*(n-i)+1; ++k) cout << ' ';
                for (int k = 0; k < i; ++k) {
                    cout << "/\\";
                    if(k!=i-1) cout << "  ";
                }
                cout << endl;
                for (int k = 0; k < (n-i)*2; ++k) cout << ' ';
                for (int k = 0; k < i; ++k) cout << "/__\\";
                cout << endl;
            }
            cout << endl;
        }
    }
}