#include <iostream>
using namespace std;

int main() {
    int k,n,m,t;
    
    cin >> k >> n >> m;
    
    for (int i = 0; i < k; ++i) {
        t = 9;
        for (int j = 0; j < n; ++j) {
            for (int h = 0; h < m; ++h) {
                cout << t;
                if (t == 0) t = 10;
                --t;
            }
            cout <<  endl;
        }
        if (i!=(k-1)) cout << endl;
    }
}