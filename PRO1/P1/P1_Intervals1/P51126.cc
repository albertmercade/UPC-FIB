#include <iostream>
using namespace std;

int main() {

    int a1, b1, a2, b2;
    
    cin >> a1 >> b1 >> a2 >> b2;
    
    //not touching
    if (a1>b2 or b1<a2) cout << "[]" << endl;
    
    //inside the other
    else if ((a1>=a2 and b1<=b2)) cout << "[" << a1 << "," << b1 << "]" << endl;
    else if (a2>=a1 and b2<=b1) cout << "[" << a2 << "," << b2 << "]" << endl;
    
    // overlapping
    else if (a1<=a2 and b1<=b2 and b1>=a2) cout << "[" << a2 << "," << b1 << "]" << endl;
    else if (a2<=a1 and b2<=b1 and b2>=a1) cout << "[" << a1 << "," << b2 << "]" << endl;
    
}