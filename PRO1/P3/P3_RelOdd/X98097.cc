#include <iostream>
using namespace std;

int main() {
    int n,m, i = 0, odd = 0, even = 0;
    
    cin >> n;
    
    m = n;
    while(m!=0) {
        m /= 10;
        ++i;
    }
    
    m = n;
    for(int j = 1; j <= i; ++j) {
        if (j%2 == 0) {
            even += m%10;
        }
        else {
           odd += m%10; 
        }
        m /= 10;
    }
    
    cout << odd << " " << even << endl;
    
    if (even != 0 and odd % even == 0) cout << odd << " = " << odd/even << " * " << even << endl;
    else if (even % odd == 0) cout << even << " = " << even/odd << " * " << odd << endl;
    else cout << "nothing" << endl;
}