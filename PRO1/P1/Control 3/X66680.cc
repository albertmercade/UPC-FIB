#include <iostream>
#include <vector>
using namespace std;

typedef vector<vector<int> > Matrix;

int find_row_most_ones(const Matrix& M) {
    int row = M.size(), col = 0;
    if(row > 0) col = M[0].size();

    int indexMax = 0, countMax = 0;

    int i = 0;
    while(i < row) {
        int j = col - 1;
        int count = 0;
        while(j >= 0 and M[i][j]!=0) {
            ++count;
            --j;
        }
        if(count > countMax) {
            indexMax = i;
            countMax = count;
        }
        ++i;
    }

    return indexMax;
}

int main() {
    int row, col;
    while(cin >> row >> col) {
        Matrix M(row, vector<int>(col));

        for(int i = 0; i < row; ++i) {
            for(int j = 0; j < col; ++j) cin >> M[i][j];
        }

        cout << "Row: " << find_row_most_ones(M) << endl;
    }
}
