#include <iostream>
#include <string>
#include <cstdio>
using namespace std;

string changeBase (int n, int b) {
    if(n==0) return "";
    
    if (n%b > 9) return changeBase(n/b,b).append(string(1,(char)(n%b+55)));
    else return changeBase(n/b,b).append(string(1,(char)(n%b+48)));
}

bool stable(int x, int y, int b) {
    long mult = x*y;

    string xy = changeBase(x,b).append(changeBase(y,b));
    string mul = changeBase(mult,b);
        
    if(xy.length() == mul.length()) {
        for(int i = 0; i < b; ++i) {
            char c;
            if(i < 10) c = (char)(i+48);
            else c = (char)(i+55);
            
            int countXY = 0;
            int countMul = 0;
            
            for(int j = 0; j < xy.length(); ++j) {
                if(xy[j] == c) ++countXY;
                if(mul[j] == c) ++countMul;
            }
            if(countMul != countXY) return false;
        }
        return true;
    }
    return false;
    
}

int main() {
    int x,y;
    
    while(cin >> x >> y) {
        int count = 0;
        cout << "solutions for " << x << " and " << y << endl;
        for(int i = 2; i <= 16; ++i){
            if(stable(x,y,i)) {
                cout << changeBase(x,i) << " * " << changeBase(y,i) << " = " << changeBase(x*y,i) << " (base " << i << ")" << endl;
                ++count;
            }
        }
        if(count == 0) cout << "none of them" << endl;
        cout << endl;
    }
}
