#include <iostream>
using namespace std;

void reverseWords () {
    string name;
    if (cin >> name) {
        reverseWords();
        cout << name << endl;
    }
}

int main() {
    reverseWords();
}