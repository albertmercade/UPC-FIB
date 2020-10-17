#include <iostream>
#include <vector>
using namespace std;

typedef vector< vector <bool> > Spiral;

int main() {
    int n, countTries = 0;
    
    while(cin >> n) {
        Spiral sp (n, vector<bool>(n,false));
        int count = 0, x = n - 1, y = 0;
        
        for(int i = n; i > 0; --i) {
            for(int j = 0; j < i; ++j) {
                sp[x][y] = true;
                
                if(j==i-1) {
                    if(count%4 == 0) --x;
                    else if(count%4 == 1) --y;
                    else if(count%4 == 2) ++x;
                    else ++y;
                }
                else{
                    if(count%4 == 0) ++y;
                    else if(count%4 == 1) --x;
                    else if(count%4 == 2) --y;
                    else ++x;
                }   
            }
            ++count;
        }
        
        if(countTries!=0) cout << endl;
        for(int i = 0; i < n; ++ i) {
            for(int j = 0; j < n; ++j) {
                if(sp[i][j])cout << 'X';
                else cout << '.';
            }
            cout << endl;
        }
        
        
        ++countTries;
    }
}
