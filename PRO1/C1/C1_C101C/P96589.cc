#include <iostream>
using namespace std;

int main() {
    char c;
    
    cin >> c;
    
    if((c<='z' and c>='a') or (c<='Z' and c>='A')) cout << "lletra" << endl;
    else if(c<='9' and c>='0') cout << "digit" << endl;
    else cout << "res" << endl;
}