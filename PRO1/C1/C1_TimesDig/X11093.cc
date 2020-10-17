#include <iostream>
#include <sstream>
using namespace std;

// define here additional functions and/or procedures
// if you need them 

// Pre: 0<=d<=9 and 0<=x.
void write_digit(int d,int x) {
    // insert here your (ITERATIVE) code
    for (int i = 0; i < x; ++i) {
        cout << d;
    }
}

// Pre: 0<n.
void write_expanded(int n) {
    // insert here your (ITERATIVE) code
    stringstream ss;
    
    ss << n;
    
    string str = ss.str();
    
    for(int i = 0; i < str.length(); ++i) {
        write_digit((str[i] - '0'), (str[i] - '0')+1);
    }
}

int main() {
    int n;
    while (cin >> n) {
        write_expanded(n);
        cout << endl;
    }
}