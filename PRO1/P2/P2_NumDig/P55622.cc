#include <iostream>
using namespace std;

int main() {

    int num0, digits = 0, num;
    
    cin >> num0;
    
    if (num0 == 0) cout << "The number of digits of 0 is 1." << endl;
    
    else {
        num = num0;
        while (num != 0) {
            num /= 10;
            ++digits;
        }
        cout << "The number of digits of " << num0 << " is "<< digits << "." << endl; 
    }

}