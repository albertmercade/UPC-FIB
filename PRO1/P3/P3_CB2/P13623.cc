#include <iostream>
using namespace std;

int main() {
    int r, c, total = 0;
    char coin;
    
    cin >> r >> c;
    
    for(int i = 1; i <= r; ++i) {
        for(int j = 1; j <= c; ++j) {
            cin >> coin;
            if(i%2 == j%2) {
                total += coin - '0';
            }
        }
    }
    
    cout << total << endl;
}