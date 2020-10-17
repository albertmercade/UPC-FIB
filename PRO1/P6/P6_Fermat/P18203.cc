#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int a,b,c,d,k=0,x;
    
    while(cin >> a >> b >> c >> d) {
        if(k==0){
            if(a<=0 and b>=0 and c<=0 and d>=0) k=1;
            else if(a<=0 and b>=0) {
                x = c;
                k=2;
            }
            else if(c<=0 and d>=0) {
                x = a;
                k=3;
            }
        }
    }
    
    if(k==1) cout << "0^3 + 0^3 = 0^3" << endl;
    else if(k==2) cout << "0^3 + " << x << "^3 = " << x << "^3" << endl;
    else if(k==3) cout << x << "^3 + 0^3 = " << x << "^3" << endl;
    else cout << "No solution!" << endl;
}