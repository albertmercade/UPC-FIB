#include <iostream>
using namespace std;

int main() {
    int n, c, max;
    
    while(cin >> n) {
        max = 0;
        for(int i = 0; i<n; ++i) {
            cin >> c;
            if (i==0) max = c;
            
            if(c>max) max = c;
        }
        cout << max << endl;
    }
}