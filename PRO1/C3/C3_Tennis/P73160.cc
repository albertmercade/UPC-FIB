#include <iostream>
#include <vector>
using namespace std;

string winner(const vector<string>& name, const vector<bool>& win) {
    int pos = 1;
    while(pos <= win.size()) {
        if(win[pos-1]) pos = pos*2;
        else pos = pos*2 + 1;
    }
    
    return name[pos - win.size() - 1];
}

int main() {
    
}
