#include <iostream>
using namespace std;

int main() {
    int age, min = 0;
    string name, young;

    for (int i = 0; i < 3; ++i) {
        cin >> name >> age;
        if (age<min or min == 0) {
            young = name;
            min = age;
        }
    }
    
    cout << young << endl;
}