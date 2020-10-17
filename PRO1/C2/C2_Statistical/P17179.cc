#include <iostream>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(4);
    
    int n, m;
    double l;
    
    cin >> n;
    
    for(int i = 0; i < n and cin >> m; ++i) {
        double min = 0, max = 0, mean = 0;
        for (int j = 0; j < m and cin >> l; ++j) {
            if(j == 0) {
                min = l;
                max = l;
            }
            
            if(l>max) max = l;
            else if(l<min) min = l;
            
            mean += l;
        }
        
        cout << min << ' ' << max << ' ' << mean/m << endl;
    }
}
