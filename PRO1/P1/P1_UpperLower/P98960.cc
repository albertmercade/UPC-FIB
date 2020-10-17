#include <iostream>
using namespace std;

int main() {

    char letra;
    
    cin >> letra;
    
    if (letra > 96) cout << (char)toupper(letra) << endl;
    else cout << (char)tolower(letra) << endl;

}
