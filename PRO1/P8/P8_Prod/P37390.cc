#include <iostream>
#include <vector>
using namespace std;

typedef vector< vector<int> > Matrix;

Matrix product(const Matrix& a, const Matrix& b) {
    int n = a.size();
    Matrix result (n, vector<int>(n));
    
    for (int i = 0; i < n; ++i) {
        for(int j = 0; j < n; ++j) {
            for(int k = 0; k < n; ++k) {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    
    return result;
}

int main() {
    int n;
    cin >> n;
    
    Matrix a(n,vector<int>(n)), b(n,vector<int>(n));
    
    for(int i = 0; i < n; ++i) for(int j = 0; j < n; ++j) cin >> a[i][j];
    for(int i = 0; i < n; ++i) for(int j = 0; j < n; ++j) cin >> b[i][j];
    
    Matrix result = product(a, b);
    
    for(int i = 0; i < n; ++i) {
        for(int j = 0; j < n; ++j) cout << result[i][j] << ' ';
        cout << endl;
    }
}
