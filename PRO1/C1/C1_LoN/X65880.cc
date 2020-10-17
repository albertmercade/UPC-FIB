#include <iostream>
using namespace std;

int main() {
    char c;
    
    cin >> c;
    
    if(c<='z' and c>='a') cout << "Lowercase letter" << endl;
    else if (c<='Z' and c>='A') cout << "Uppercase letter" << endl;
    else if(c<='9' and c>='0') cout << "Number" << endl;
}