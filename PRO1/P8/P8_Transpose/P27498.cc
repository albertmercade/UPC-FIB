#include <iostream>
#include <vector>
using namespace std;

typedef vector<int> row;
typedef vector<row> Matrix;

void transpose(Matrix& m) {
    Matrix p = m;
    
    for(int i = 0; i < m[0].size(); ++i) for(int j = 0; j < m[0].size(); ++j) m[i][j] = p[j][i];
}

int main() {
    int n;
    cin >> n;
    
    Matrix m(n,row(n));
    
    for(int i = 0; i < n; ++i) for(int j = 0; j < n; ++j) cin >> m[i][j];
    
    transpose(m);
}
