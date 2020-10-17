#include <iostream>
using namespace std;

int main() {

    int n, c, total = 0;
    
    cin >> n;
    
    while(cin >> c) if(c%n == 0) ++total;
    
    cout << total << endl;
    
}