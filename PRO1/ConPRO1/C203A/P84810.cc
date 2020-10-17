#include <iostream>
using namespace std;

bool es_primer(int n) {
    for (int i = 2; i < n; ++i) if (n%i == 0) return false;
    return true;
}

int main() {
    int n, prev = 8, total = 0;
    
    while (cin >> n) {
        if (es_primer(n) and es_primer(prev)) ++total;
        prev  = n;
    }
    
    cout << "parells de nombres primers consecutius: " << total << endl;
}