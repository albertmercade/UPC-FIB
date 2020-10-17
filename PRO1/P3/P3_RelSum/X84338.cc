#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int n, i = 0, m, n1 = 0, n2 = 0;
    
    cin >> n;
    
    m = n;
    while(m!=0) {
        m /= 10;
        ++i;
    }
    
    if(i%2==0 and n!=0) {
        m = n;
        for(int j = 1; j <= (i/2); ++j) {
            n1 += m % 10;
            m /= 10;
        }
        
        m = n/(pow(10,(i/2)));
        for(int j = 1; j <= (i/2); ++j) {
            n2 += m % 10;
            m /= 10;
        }
        
        if (n2 > n1) cout << n2 << " > " << n1 << endl;
        else if (n2 < n1) cout << n2 << " < " << n1 << endl;
        else if (n2 == n1) cout << n2 << " = " << n1 << endl;
        
    }
    
    else cout << "nothing" << endl;
}