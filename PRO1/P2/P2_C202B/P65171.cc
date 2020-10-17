#include <iostream>
#include <cmath>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(2);

    double total=0, n, x, sum=0, sum2=0;
    
    cin >> n;
    
    for(int i = 0; i < n; ++i) {
        cin >> x;
        sum += x*x;
        sum2 += x;
    }

    sum2 = sum2*sum2;
    
    total = (1/(n-1))*sum - (1/(n*(n-1)))*sum2;
    
    cout << total << endl;
    
}