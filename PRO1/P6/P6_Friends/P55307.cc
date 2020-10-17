#include <iostream>
#include <cstdio>
#include <cmath>
using namespace std;

bool friends(int n1, int n2) {
    int tot1 = 0, tot2 = 0;
    
    for (int i = 2; i < (int)sqrt(n1)+1; ++i) if (n1%i == 0) tot1 += i + n1/i;
    for (int i = 2; i < (int)sqrt(n2)+1; ++i) if (n2%i == 0) tot2 += i + n2/i;
    
    return tot1+1 == n2 and tot2+1 == n1 and n1 != n2;
}

int main() {
    int n1, n2, i = 0;
    
    while(cin>> n1 >> n2) {
        if(friends(n1, n2)) {
            if(i != 0) cout << ",(" << n1 << ' ' << n2 << ')';
            else cout << '(' << n1 << ' ' << n2 << ')';
            ++i;
        }
    }
    cout << endl;
}
