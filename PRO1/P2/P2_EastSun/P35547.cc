#include <iostream>
using namespace std;

int main() {
    
    int x,z,e,Y,D,M;
    
    while(cin >> Y) {
        
        x = Y%19;
        z = (19*(Y%19) + ((15 - ((13+8*(Y/100))/25) + (Y/100) - (Y/400))%30))%30;
        e = (2*(Y%4) + 4*(Y%7) + 6*z + ((4 + (Y/100) - (Y/400))%7))%7;

        if((z+e) <= 9) {
            D = 22+z+e;
            M = 3;
        }
        else if (z == 29 and e == 6) {
            D = 19;
            M = 4;
        }
        else if (z == 28 and e == 6 and x > 10) {
            D = 18;
            M = 4;
        }
        else {
            D = z + e - 9;
            M = 4;
        }
        
        cout << D << '/' << M << endl;
    
    }
}