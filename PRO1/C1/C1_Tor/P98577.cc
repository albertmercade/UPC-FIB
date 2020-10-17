#include <iostream>
using namespace std;

int main() {
    
    int h, m, t, h1 = 0, m1 = 0, bells = 0;
    
    while (cin >> h >> m >> t) {
    
        bells = 0;
        
        if (t >= 1440) {
            bells += (t/1440)*22;
            t = t%1440;
        }
        
        h1 = t/60 + h;
        m1 = t%60 + m;
        
        
        if (m1 > 59) {
            m1 = m1 - 60;
            ++h1;
            if (h1 > 23) {
                h1 = h1%24;
            }
        }
        else if (h1 > 23) {
            h1 = h1%24;
        }
        
        while (h!=h1 or m!=m1) {
            ++m;
            if((h>=0 and h < 3) and m == 5*h + 1) bells += 1;
            else if((h>2 and h < 5) and m == 5*h + 2) bells += 1;
            else if((h>4 and h < 7) and m == 5*h + 3) bells += 1;
            else if((h>6 and h < 9) and m == 5*h + 4) bells += 1;
            else if((h>8 and h < 11) and m == 5*h + 5) bells += 1;
            else if((h>=12 and h < 15) and m == 5*(h-12) + 1) bells += 1;
            else if((h>14 and h < 17) and m == 5*(h-12) + 2) bells += 1;
            else if((h>16 and h < 19) and m == 5*(h-12) + 3) bells += 1;
            else if((h>18 and h < 21) and m == 5*(h-12) + 4) bells += 1;
            else if((h>20 and h < 23) and m == 5*(h-12) + 5) bells += 1;
            
            if (m == 60) {
                ++h;
                m = 0;
                if (h == 24) h = 0;
            }
        }
        
        cout << bells << endl;
        
    }
    
}