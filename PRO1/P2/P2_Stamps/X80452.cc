#include <iostream>
using namespace std;

int main() {
    int n, p = 0, q = 0;
    
    while(cin >> n) {
        q = 0;
        p = n/7;
        
        while((7*p + 4*q) != n){
            if((7*p + 4*q) > n) p -= 1;
            q += 1;
        }
        
        cout << p << " " << q << endl;
    }
}