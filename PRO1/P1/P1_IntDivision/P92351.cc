#include <iostream>
using namespace std;

int main() {

  int a,b,d,r;
  
  cin >> a >> b;
  
  if (b>0) {
    if (a>=0 or b==1) {
      d = a/b;
      r = a%b;
    }
    else if (a<0) {
      d = a/b - 1;
      r = -b*d + a;
    }
    
    cout << d << " " << r << endl;
    
  }
    
}