#include <iostream>
using namespace std;

int main() {
    int x,y,k = 1;
    
    while (cin >> y >> x) {
        if (k != 1) cout << endl;
        
        cout << " _";
        for (int i = 1; i < x; ++i) cout << "   _";
        cout << endl;
        for (int i = 0; i < y; ++i) {
            for (int j = 0; j < x; ++j) {
                cout << "/ \\";
                if (j != x-1) cout << '_';
            }
            cout << endl;
            for (int j = 0; j < x; ++j) {
                cout << "\\_/";
                if (j != x-1) cout << ' ';
            }
            cout << endl;
        }
        ++k;
    }
}