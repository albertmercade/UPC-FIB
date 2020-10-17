#include <iostream>
using namespace std;

int maxDigit(int n) {
    if(n<10) return n;
    
    int dig = n%10;
    int nextDig = maxDigit(n/10);
    
    if(dig>nextDig) return dig;
    else return nextDig;
}

int main() {
    int n;
    
    while(cin >> n) cout << maxDigit(n) << endl;
}
