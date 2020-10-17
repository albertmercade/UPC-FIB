#include <iostream>
#include <vector>
using namespace std;

typedef vector<char> Rows;
typedef vector<Rows> Board;

int main() {
    int r, c;
    
    cin >> r >> c;
    
    Board b (r,(c));
    for(int i = 0; i < r; ++i) {
        for(int j = 0; j < r; ++j) cin >> b[i][j];
    }
    
}
