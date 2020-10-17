#include <iostream>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(10);
    
    long long n, m;
    double hn   ;
    
    while (cin >> n >> m) {
        hn = 0;
        
        for (double i = m+1; i <= n; ++i) hn += 1/i;
        
        cout << hn << endl;
    }
    
}