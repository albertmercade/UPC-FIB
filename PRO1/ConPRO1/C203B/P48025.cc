#include <iostream>
using namespace std;

bool acaba_en_quaranta_dos(int x) {
    if(x%100 == 42) return true;
    else return false;
}

int main() {
    int n, j = 0;

    while (cin >> n) {
        int num, total = 0;
        
        for (int i = 0; i < n; ++i) {
            cin >> num;
            if (acaba_en_quaranta_dos(num)) ++total;
        }
        
        ++j;
        cout << '#' << j << ": " << total << endl;
    }
}