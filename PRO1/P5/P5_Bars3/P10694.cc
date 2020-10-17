#include <iostream>
#include <string>
using namespace std;

void bars(int n) {
    if(n==1) {
        cout << '*' << endl;
        return;
    }
    bars(n-1);
    bars(n-1);
    cout << string(n,'*') << endl;
}

int main() {
    int n;
    
    cin >> n;
    bars(n);
}
