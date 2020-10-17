#include <iostream>
#include <cmath>
using namespace std;

void llegeix_hora(int& h, int& m, int& s) {
    int h1 = h, m1 = m, s1 = s, i = 0;
    h=0, m=0, s=0;
    while(h1 > 0) {
        h += h1%10 * (int)pow(2,i);
        ++i;
        h1 /= 10;
    }
    i = 0;
    while(m1 > 0) {
        m += m1%10 * pow(2,i);
        ++i;
        m1 /= 10;
    }
    i=0;
    while(s1 > 0) {
        s += s1%10 * pow(2,i);
        ++i;
        s1 /= 10;
    }
}

void escriu_hora(int h, int m, int s) {
    cout << h << ':' << m << ':' << s << endl;
}

int main() {
    int n;
    
    cin >> n;
    
    for(int j = 0; j < n; ++j) {
        int i=0, h = 0, m = 0, s = 0;
        char c;
        while(i!=4) {
            cin >> c;
            if(c=='|') ++i;
            if(i == 1) {
                if(c == '*') h = h*10 + 1;
                else if(c == '$') h *= 10;
            }
            else if(i == 2) {
                if(c == '*') m = m*10 + 1;
                else if(c == '$') m *= 10;
            }
            else if(i == 3) {
                if(c == '*') s = s*10 + 1;
                else if(c == '$') s *= 10;
            }
        }
        llegeix_hora(h,m,s);
        escriu_hora(h,m,s);
    }
}