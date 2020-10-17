#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int n,m,v,p=0;
    
    while(cin >> n >> m) {
        if(p==1) cout << endl;
        p=1;
        v=9;
        
        for (int i = 0; i < n; ++i) {
            for (int j = 0; j < m; ++j) {
                cout << v;
                if(v==0) v = 10;
                --v;
            }
            cout << endl;
        }        
    }
    
}