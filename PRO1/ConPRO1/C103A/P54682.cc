#include <iostream>
using namespace std;

int main() {
    string str1, str2, str3, str4;
    
    cin >> str1 >> str2 >> str3 >> str4;
    
    if (str1 == "A____A" and str2 == "||[]||" and str3 == "||__||" and str4 == "~~~~~~") cout << "castell" << endl;
    else if (str1 == "----" and str2 == "[][]" and str3 == "[][]" and str4 == "[][]") cout << "edifici" << endl;
    else cout << "no res" << endl;
}