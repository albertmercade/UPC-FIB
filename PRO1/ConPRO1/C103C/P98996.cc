#include <iostream>
using namespace std;

int main() {
    char c;

    cin >> c;

    if (c > 96 and c<123) cout << c << " -> " << c-96 << endl;
    else if (c > 64 and c < 91) cout << c << " -> " << c-64 << endl;
    else cout << c << " -> no es una lletra" << endl;
}