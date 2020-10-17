#include <iostream>
#include <string>
#include <cstdio>
using namespace std;

int main() {
    int x = 0, y = 0;
    string dir;
    
    cin >> dir;

    for(int i = 0; i < dir.size(); ++i) {
        if(dir[i]=='n') y -= 1;
        else if(dir[i]=='s') y += 1;
        else if(dir[i]=='e') x += 1;
        else if(dir[i]=='w') x -= 1;
    }
    
    printf("(%d, %d)\n", x, y);
}