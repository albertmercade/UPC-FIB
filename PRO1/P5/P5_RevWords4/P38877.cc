#include <iostream>
using namespace std;

int reverseWords (const int& n) {
    string name;
    if (cin >> name) {
        int pos = reverseWords(n) + 1;
        if(pos <= n) cout << name << endl; 
        return pos;
    }
    return 0;
}

int main() {
    int n;
    cin >> n;
    
    reverseWords(n);
}