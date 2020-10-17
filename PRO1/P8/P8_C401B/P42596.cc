#include <iostream>
#include <vector>
using namespace std;

typedef vector< vector<int> > Matrix;

void min_max (const Matrix& m, int& min, int& max) {
    min = m[0][0], max = m[0][0];
    for(int i = 0; i < m.size(); ++i) {
        for(int j = 0; j < m[0].size(); ++j) {
            if(m[i][j]<min) min = m[i][j];
            else if(m[i][j]>max) max = m[i][j];
        }
    }
}

int main() {
    int r, c, count = 1, difMax = 0, firstDif = 1, max, min;
    //bool more = false;
    
    while(cin >> r >> c) {
        Matrix m (r, vector<int> (c));
        for(int i = 0; i < r; ++i) for(int j = 0; j < c; ++j) cin >> m[i][j];
        
        min_max(m, min, max);
        int dif = max - min;
        
        if(dif > difMax) {
            //more = false;
            difMax = dif;
            firstDif = count;
        }
        //else if(dif == difMax) more = true;
        
        ++count;
    }
    
    cout << "la diferencia maxima es " << difMax << endl;
    cout << "la primera matriu amb aquesta diferencia es la " << firstDif << endl;
}
