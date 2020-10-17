#include <iostream>
using namespace std;

int main() {
    int n, prod, x;
    
    while(cin >> n) {
        prod = 10;
        while (prod > 9){
            cout << "The product of the digits of " << n << " is ";
            if(n == 0) prod = 0;
            else {
                prod = 1;
                while(n!=0) {
                    x = n%10;
                    prod *= x;
                    n /= 10; 
                }
                n = prod;
            }
            cout << prod << "." << endl;
        }
        cout << "----------" << endl;
    }
    
}