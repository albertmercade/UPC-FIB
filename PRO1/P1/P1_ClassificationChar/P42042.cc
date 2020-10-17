#include <iostream>
using namespace std;

int main() {

    char letra;
    
    cin >> letra;
    
    if (islower(letra)) cout << "lowercase" << endl;
    else cout << "uppercase" << endl;
    
    if (letra == 'a' or letra == 'e' or letra == 'i' or letra == 'o' or letra == 'u' or letra == 'A' or letra == 'E' or letra == 'I' or letra == 'O' or letra == 'U') cout << "vowel" << endl;
    else cout << "consonant" << endl;

}
