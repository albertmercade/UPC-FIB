#include <iostream>
using namespace std;

void reverseWords () {
    string name;
    cin >> name;
    if (name == "end") return;
    reverseWords();
    cout << name << endl;
}

int main() {
    reverseWords();
}