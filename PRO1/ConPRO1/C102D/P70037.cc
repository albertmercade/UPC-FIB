#include <iostream>
#include <cstdio>
using namespace std;

int main() {

    int a,b;
    
    cin >> a >> b;

    if (b==0) cout << "divisio per zero" << endl;

    else {
        printf("%.3f %d %d\n", (double)a/(double)b, a/b, a%b);
    }
    
}