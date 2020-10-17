#include <iostream>
using namespace std;

int main() {
    
        int n, total;
        
        cin >> n;
    
        for(int i = 0; i < 3; ++i) {
            total += n%10;
            n /= 10;
        }
        
        cout << total << endl;

}