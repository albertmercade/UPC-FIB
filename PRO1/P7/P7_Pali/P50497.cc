#include <iostream>
#include <vector>
#include <string>

using namespace std;

bool is_palindrome(const string& s) {
        int strSize = s.length();
        for(int i = 0; i<strSize/2; ++i) {
            if(s[i] != s[strSize-1-i]) return false;
        }
        return true;
}

int main() {
    string str;
    cin >> str;
    
    cout << is_palindrome(str) << endl;
}
