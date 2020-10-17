#include <iostream>
#include <vector>
using namespace std;

typedef vector < vector<int> > Matrix;

void firstRowCol(const Matrix& field, int& count) {
    if(field[0][0] != 0) ++count;
    
    for(int i = 0; i < 1; ++i) {
        for(int j = 1; j < field[0].size(); ++j) {
            if(field[i][j-1] == 0 and field[i][j]!=0) ++count;
        }
    }
    
    for(int i = 1; i < field.size(); ++i) {
        for(int j = 0; j < 1; ++j) {
            if(field[i-1][j] == 0 and field[i][j]!=0) ++count;
        }
    }
}

void searchField (const Matrix& field, int& count) {
    for(int i = 1; i < field.size(); ++i) {
        for(int j = 1; j < field[0].size(); ++j) {
            if(field[i][j] != 0 and field[i-1][j] == 0 and field[i][j-1] == 0) ++count;
        }
    }
}

int main() {
    int m, n;
    
    while(cin >> m >> n) {
        int count = 0;
        
        Matrix field (m, vector<int> (n));
        for(int i = 0; i < m; ++i) {
            for(int j = 0; j < n; ++j) cin >> field[i][j];
        }
        
        firstRowCol(field, count);
        searchField(field, count);
        
        cout << count << endl;
    }
}
