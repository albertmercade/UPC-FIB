#include <iostream>
#include <vector>
using namespace std;

typedef vector<vector<int> > Matrix;

bool doublingmatrix (const Matrix& M) {
    int row = M.size(), col = 0;

    if(row > 0) col = M[0].size();

    for(int i = 0; i < row-1; ++i) {
        for(int j = 0; j < col-1; ++j) {
            if(M[i][j]*2 != M[i+1][j] or M[i][j]*2 != M[i][j+1]) return false;
        }
    }
    if(M[row-1][col-1] != M[row-2][col-1]*2) return false;

    return true;
}

int main() {
    int col, row;

    while(cin >> row >> col) {
        Matrix M (row, vector<int>(col));

        for(int i = 0; i < row; ++i) {
            for(int j = 0; j < col; ++j) cin >> M[i][j];
        }

        if(doublingmatrix(M)) cout << "yes" << endl;
        else cout << "no" << endl;
    }
}
