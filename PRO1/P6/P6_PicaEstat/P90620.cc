#include <iostream>
using namespace std;

int main() {
    int n = 1, prev, peak = 0;
    
    while (n != 0) {
        cin >> n;
        if(n != 0) {
            if (peak == 1 and n<prev) {
                cout << "YES" << endl;
                n = 0;
            }
        }
        else peak = 0;
        if(n>prev and n>3143) peak = 1;
        prev = n;
    }
    if (peak != 1) cout << "NO" << endl;
}