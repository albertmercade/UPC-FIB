#include <iostream>
using namespace std;

int  dif(int x, int y) {
    return x-y;
}

int main() {
    int x,y;
    
    cin >> x >> y;
    
    cout << dif(x,y) << endl;
}