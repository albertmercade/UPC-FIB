#include <iostream>
using namespace std;

int main() {
    
    int h, m, t, h1 = 0, m1 = 0, bells = 0;
    
    while (cin >> h >> m >> t) {
    
        bells = 0;
        
        if (t >= 1440) {
            bells = (t/1440)*484;
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
            if(m==16) {
                bells = bells + 1;
            }
            else if(m==31) {
                bells = bells + 2;
            }
            else if(m==46) {
                bells = bells + 3;
            }
            else if(m==60) {
                m = m - 60;
                ++h;
                if (h==24) h=0;
            }
            else if(m==01) {
                if (h==0) bells = bells + 4 + 12;
                else if (h<12) bells = bells + 4 + h;
                else if (h==12) bells = bells + 4 + 100;
                else if (h>=13) bells = bells + 4 + h - 12;
            }
            
        }
        
        cout << bells << endl;
        
    }
        

    
}