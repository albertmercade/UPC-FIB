#include <iostream>
using namespace std;

struct Clock {
    int h;
    int m;
    int s;
};

Clock midnight() {
    Clock c;
    c.h = 0, c.m = 0, c.s=0;
    return c;
}

void increase(Clock& r) {
    r.s += 1;
    if(r.s>59) {
        ++r.m;
        r.s = 0;
    }
    if(r.m>59) {
        ++r.h;
        r.m = 0;
    }
    if(r.h>23) r.h = 0;
}

void print(const Clock& r) {
    if(r.h>9) cout << r.h << ':';
    else cout << '0' << r.h << ':';
    
    if(r.m>9) cout << r.m << ':';
    else cout << '0' << r.m << ':';
    
    if(r.s>9) cout << r.s << endl;
    else cout << '0' << r.s << endl;
}

int main() {
    
}
