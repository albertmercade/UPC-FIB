#include <iostream>
using namespace std;

int main() {

     int a, b, c, max, min;
     
     cin >> a >> b >> c;
     
     if (a<b and a<c) {
         min = a;
         if (b<c) max = c;
         else max = b;
    }
     else if (b<c) {
         min = b;
         if (a<c) max = c;
         else max = a;
     }
     else {
         min = c;
         if (b<a) max = a;
         else max = b;
     }
     
     cout << max + min << endl;

}
