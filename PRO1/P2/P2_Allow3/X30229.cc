#include <iostream>
using namespace std;

int main () {
    int o, e, n, p, i = 1;
    
    cin >> o >> e >> n;
    
    while (cin >> p) {
        
        if(i%2 == 0) n += (e - p);
        else n += (o - p);
        
        ++i;
        
        cout << n << endl;
    }
}