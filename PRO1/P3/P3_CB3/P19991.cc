#include <iostream>
using namespace std;

int main() {
    int r, total = 0;
    char coin;
    
    cin >> r;
    
    for(int i = 1; i <= r; ++i) {
        for(int j = 1; j <= r; ++j) {
            cin >> coin;
            if(j==i) total += coin - '0';
            else if(j == (r - i + 1)) total += coin - '0';
        }
    }
    
    cout << total << endl;
}