#include <iostream>
#include <vector>
using namespace std;

typedef vector< vector<int> > Matrix;

Matrix product(const Matrix& a, const Matrix& b) {
    Matrix result (a.size(), vector<int>(b[0].size()));
    
    for (int i = 0; i < a.size(); ++i) {
        for(int j = 0; j < b[0].size(); ++j) {
            for(int k = 0; k < a[0].size(); ++k) {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    
    return result;
}

int main() {
    int p, q, r;
    cin >> p >> q >> r;
    
    Matrix a(p,vector<int>(q)), b(q,vector<int>(r));
    
    for(int i = 0; i < p; ++i) for(int j = 0; j < q; ++j) cin >> a[i][j];
    for(int i = 0; i < q; ++i) for(int j = 0; j < r; ++j) cin >> b[i][j];
    
    Matrix result = product(a, b);
    
    for(int i = 0; i < p; ++i) {
        for(int j = 0; j < r; ++j) cout << result[i][j] << ' ';
        cout << endl;
    }
}
