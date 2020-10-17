#include <iostream>
using namespace std;

void write_digit(int d, int x) {
    if(x > 1) write_digit(d,(x-1));
    
    cout << d;
}

// Pre: 0<n.
void write_expanded(int n) {
// insert here your (RECURSIVE) code
    if(n>9) write_expanded(n/10);
    
    write_digit(n%10, (n%10)+1);
}

int main() {
    int n;
    while (cin >> n) {
        write_expanded(n);
        cout << endl;
    }
}
