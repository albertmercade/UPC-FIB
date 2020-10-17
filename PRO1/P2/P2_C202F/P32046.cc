#include <iostream>
using namespace std;

int main() {
    int n, c, total=0;
    
    cin >> n;
    
    cout << "nombres que acaben igual que " << n << ":" << endl;
    
    while(cin>>c) {
        if(c%1000 == n%1000) {
            cout << c << endl;
            ++total;
        }
    }
    
    cout << "total: " << total << endl;
    
}