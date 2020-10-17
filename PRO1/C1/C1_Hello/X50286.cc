#include <iostream>
using namespace std;

int main() {
    int total = 0;
    string str;
    
    while (cin >> str) {
        if (str == "hello") ++total;
    }
    
    cout << total << endl;
}