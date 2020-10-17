#include <iostream>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(4);

    int n;
    double total = 0;
    
    cin >> n;
    
    if (n >= 1) {
        for(int j = 1; j <= n; ++j) total += 1/(double)j;
        cout << total << endl;
    }
    
    else cout << total << endl;
}