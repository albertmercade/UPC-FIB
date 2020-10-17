#include <iostream>
using namespace std;

void converge(int n, int& k, int& far) {
    if(n > far) far = n;
    while(n!=1) {
        if(n > far) far = n;
        k++;
        
        if(n%2 == 0) n /= 2;
        else n = 3*n + 1;
    }
}

int main() {
    int n, p, far = 0;;
    
    cin >> n >> p;
    
    for(int i = 1; i <= n; ++i) {
        int k = 0;
        converge(i,k,far);
        if(k >= p) cout << i << endl;
    }
    
    cout << "The greatest reached number is " << far << "." << endl;
}
