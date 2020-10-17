#include <iostream>
#include <cmath>
using namespace std;

string day_of_the_week (int d, int m, int y) {    
    int y0;
    
    int m0 = m - 2;
    if (m0 <= 0) {
        m0 += 12;
        y0 = y - 1;
    }
    else {
        y0 = y;
    }
    
    int c = y0 / 100, a = y0 % 100;
        
    //zeller's algorithm
    int f = floor(2.6*m0 - 0.2) + d + a + floor(a/4) + floor(c/4) - 2*c;
    f %= 7;
    
    //corrects negative modulo
    if(f<0) f += 7;
    
    //returns correct day of the week
    switch(f) {
        case 0: return "Sunday";
        case 1: return "Monday";
        case 2: return "Tuesday";
        case 3: return "Wednesday";
        case 4: return "Thursday";
        case 5: return "Friday";
        case 6: return "Saturday";
    }
    return "nothing";
}

int main() {
    int d,m,y;
    
    while(cin >> d >> m >> y) {
        cout << day_of_the_week (d,m,y) <<  endl;
    }
    
}