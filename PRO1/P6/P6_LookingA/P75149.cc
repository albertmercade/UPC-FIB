#include <iostream>
using namespace std;

int main() {
    char c;
    int ok = 0;
    
    while (ok == 0) {
        cin >> c;
        if(c == 'a') {
            cout << "yes" << endl;
            ok = 1;
        }
        else if (c == '.') {
            cout << "no" << endl;
            ok = 1;
        }
    }
}