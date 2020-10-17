#include <iostream>
#include <string>
using namespace std;

void write_rule(const string& s, int W) {
// insert here your code. Your implementation must be ITERATIVE.
    int iterations = W/(s.length());
    for(int i=0; i<iterations; ++i) cout << s;
}

int main() {
    string s;
    int W;
    
    while (cin >> s >> W) {
        write_rule(s, W);
        cout << endl;
    }
}
