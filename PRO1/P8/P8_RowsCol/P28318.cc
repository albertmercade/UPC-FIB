#include <iostream>
#include <vector>
using namespace std;

int main() {
    int c, r;
    cin >> r >> c;
    
    vector< vector<int> > colrow (r,vector<int> (c));
    for(int i = 0; i < r; ++i) {
        for(int j = 0; j < c; ++j) cin >> colrow[i][j];
    }
    
    string word;
    
    while(cin >> word) {
        if(word == "row") {
            int n;
            cin >> n;
            
            cout << "row " << n << ":";
            for(int i = 0; i < c; ++i) cout << ' ' << colrow[n-1][i];
            cout << endl;
        }
        else if(word == "column") {
            int n;
            cin >> n;
            
            cout << "column " << n << ":";
            for(int i = 0; i < r; ++i) cout << ' ' << colrow[i][n-1];
            cout << endl;
        }
        else if(word == "element") {
            int n, b;
            cin >> n >> b;
            
            cout << "element " << n << ' ' << b << ": " << colrow[n-1][b-1] << endl;
        }
    }
}
