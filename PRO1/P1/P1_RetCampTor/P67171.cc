#include <iostream>
using namespace std;

int main() {
    
    int h, m, bells, time;
    
    while (cin >> h >> m) {
        
        bells = 0;
        
        if(h==13 or h==1) time = 60 - m;
        else if ((h==0 or h==12) and m>0) {
            if (m > 15) time = 120 - m;
            else time = 105 - m;
        }
        else if (m==0) time=0;
        else time = 60 - m;
        
        for(int i = 0; i <= time; ++i) {
            ++m;
            
            if (m==16 or m==31 or m==46) ++bells;
            else if (m==60) {
                m = 0;
                ++h;
                if (h==24) h = 0;
            }
            else if (m == 1) {
                if (h==0 or h==12) bells += 12;
                else if (h<13) bells += h;
                else bells += h - 12;
            }
        }
        
        cout << time << " " << bells << endl;
        
    }
}