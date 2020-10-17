#include <iostream>
using namespace std;

int main() {
    int r, totw = 0, totb = 0;
    char coin;
    
    cin >> r;
    
    for(int i = 1; i <= r; ++i) {
        for(int j = 1; j <= r; ++j) {
            cin >> coin;
            if(i%2 == j%2) totw += coin - '0';
            else totb += coin - '0';
        }
    }
    
    cout << totw << "-" << totb << " = " << totw-totb << endl;
}