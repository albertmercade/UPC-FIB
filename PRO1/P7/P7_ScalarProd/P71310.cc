#include <iostream>
#include <vector>
using namespace std;

double scalar_product(const vector<double>& u, const vector<double>& v) {
    int size = u.size();
    double total = 0;
    
    for(int i=0; i<size; ++i) {
        total += u[i]*v[i];
    }
    return total;
}

int main() {
    static const double arr[] = {1.6,6.0,7.3};
    vector<double> u (arr, arr + sizeof(arr) / sizeof(arr[0]) );
    
    static const double arr1[] = {9.1,3.2,8};
    vector<double> v (arr1, arr1 + sizeof(arr1) / sizeof(arr1[0]) );
    
    cout << scalar_product(u,v) << endl;
}
