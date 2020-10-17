#include <iostream>
#include <vector>
#include <cstdio>
using namespace std;

typedef vector< vector<char> > Board; 

void diagonal(int x, int y, int i, int j, const Board& a) {
    int k = i, l = j;
    bool found = false;
    
    while (!found and x+l<a[0].size() and y+k<a.size() and x+l>=0 and y+k>=0) {
        if(a[y+k][x+l] == 'X') {
            printf("(%d,%d)<->(%d,%d)\n",y+1,x+1,y+k+1,x+l+1);
            found = true;
        }
        k += i, l += j;
    }
}

void threatening(int x, int y, const Board& a) {
    diagonal(x,y,1,1,a);
    diagonal(x,y,-1,1,a);
    diagonal(x,y,1,-1,a);
    diagonal(x,y,-1,-1,a);
}

int main() {
    int r, c;
    cin >> r >> c;
    
    Board a (r, vector<char>(c));
    for(int i = 0; i < r; ++i) {
        for(int j = 0; j < c; ++j) cin >> a[i][j];
    }
    
    for(int i = 0; i < r; ++i) {
        for(int j = 0; j < c; ++j) {
            if(a[i][j] == 'X') threatening(j,i,a);
        }
    }
}
