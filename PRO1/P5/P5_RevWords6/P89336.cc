#include <iostream>
using namespace std;

int reverseWords (int n) {
    int a;
    string name;
    if (cin >> name) {
        ++n;
        a = n;
        n = reverseWords(n);
        if(a<=n/2) cout << name << endl;
        return n;
    }
    return n;
}

int main() {
    reverseWords(0);
}