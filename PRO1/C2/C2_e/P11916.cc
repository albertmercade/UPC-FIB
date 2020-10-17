#include <iostream>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(10);
    
    int n; 
    
    while(cin >> n) {
        double e = 0;
        for(int i = 0; i < n; ++i) {
            double factorial = 1;
            for(int j = 1; j <= i; ++j) factorial *=  j;
            e += 1/(factorial);
        }
        cout << "With " << n << " term(s) we get " << e << "." << endl;
    }
}
