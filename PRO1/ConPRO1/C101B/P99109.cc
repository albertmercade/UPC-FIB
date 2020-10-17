#include <iostream>
using namespace std;

int main() {
    string a,b,c;
    
    cin >> a >> b >> c;
    
    string mn = a;
    if (b < mn) mn = b;
    if (c < mn) mn = c;
    
    cout << mn << endl;
}