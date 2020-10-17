#include <iostream>
#include <vector>
using namespace std;

typedef vector< vector<int> > Matrix;

bool increasing(int x, int y, int i, int j, const Matrix& a) {
    for(int k = i, l = j; x+k<a.size() and y+l<a[0].size() and x+k>=0 and y+l>=0; k+=i, l+=j) {
        if(a[x+k][y+l] <= a[x+k-i][y+l-j]) return false;
    }
    return true;
}

int main() {
    int r, c;
    
    while(cin >> r >> c) {
        Matrix a(r,vector<int>(c));
        
        for(int i = 0; i < r; ++i) for(int j = 0; j < c; ++j) cin >> a[i][j];
        
        int x,y;
        cin >> x >> y;
        
        if(increasing(x,y,-1,-1,a) and increasing(x,y,-1,1,a) and increasing(x,y,1,-1,a) and increasing(x,y,1,1,a)) {
            cout << "yes" << endl;
        }
        else cout << "no" << endl;
    }
    
}
