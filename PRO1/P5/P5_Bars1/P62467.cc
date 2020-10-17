#include <iostream>
#include <string>
using namespace std;

void bars(int n) {
    if (n == 0) return;
    bars(n-1);
    cout << string(n,'*') << endl;
    bars(n-1);
}

int main() {
    int n;
    
    cin >> n;
    
    bars(n);
}