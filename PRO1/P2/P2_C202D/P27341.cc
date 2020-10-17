#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    int a, b;
    
    while(cin >> a >> b) {
        int total = 0;
        for(int i = a; i <= b; ++i) total += i*i*i;
        
        printf("suma dels cubs entre %d i %d: %d\n", a, b, total);
    }
}