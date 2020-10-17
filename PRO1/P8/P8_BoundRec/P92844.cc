#include <iostream>
#include <vector>
using namespace std;

typedef vector<char> Row;
typedef vector<Row> Rectangle;

void minimal_dimensions(char c, const Rectangle& r, int& rows, int& cols) {
    int colsSize = r[0].size(), rowsSize = r.size();
    int firstR, firstC, lastR, lastC;

    bool found = false;
    
    int i = 0;
    while(!found and i < rowsSize) {
        int j = 0;
        while(!found and j < colsSize) {
            if (r[i][j] == c) {
                found = true;
                firstR = i;
            }
            ++j;
        }
        ++i;
    }
    
    found = false;
    int j = 0;
    while(!found and j < colsSize) {
        i = 0;
        while(!found and i < rowsSize) {
            if (r[i][j] == c) {
                found = true;
                firstC = j;
            }
            ++i;
        }
        ++j;
    }
    
    found = false;
    i = rowsSize - 1;
    while(!found and i >= 0) {
        j = colsSize - 1;
        while(!found and j >= 0) {
            if (r[i][j] == c) {
                found = true;
                lastR = i;
            }
            --j;
        }
        --i;
    }
    
    found = false;
    j = colsSize - 1;
    while(!found and j >= 0) {
        i = rowsSize - 1;
        while(!found and i >= 0) {
            if (r[i][j] == c) {
                found = true;
                lastC = j;
            }
            --i;
        }
        --j;
    }
    
    rows = lastR - firstR + 1;
    cols = lastC - firstC + 1;
}

int main() {
    int c, n, rows = 0, cols = 0;
    cin >> n >> c;
    
    Rectangle r (n, vector<char> (c));
    char k = 'x';
    for (int i = 0; i < n; ++i) {
        for(int j = 0; j < c; ++j) cin >> r[i][j];
    }
    
    minimal_dimensions(k,r,rows,cols);
    
    cout << rows << ' ' << cols << endl;
}
