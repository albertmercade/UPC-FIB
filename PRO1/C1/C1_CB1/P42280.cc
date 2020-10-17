#include <iostream>
using namespace std;

int main() {
    int r,c, total;
    char a;
    
    cin >> r >> c;

    while (cin >> a) total += a - '0';
    
    cout << total << endl;
}