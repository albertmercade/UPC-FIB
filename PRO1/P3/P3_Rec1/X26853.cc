#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int n,m,v=8,p;
    
    while(cin >> n >> m) {
        if(v!=8) cout << endl;
        p = 0;
        v = (n+m)%5;
        
        if (v == 0) {
            for (int i = 0; i < n; ++i) {
                for (int j = 0; j < m; ++j) cout << v;
                cout << endl;
            }
        }
        else {
            for(int i = 0; i < m; ++i) p += pow(10,i) * v;
            for(int i = 0; i < n; ++i) cout << p << endl;
        }
        
    }
    
}