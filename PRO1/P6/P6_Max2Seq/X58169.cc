#include <iostream>
using namespace std;

void infoSequence(int& max, int& lpos) {
       if(lpos>max) max = lpos;
}

int main() {
    int n, max = 0, lpos = 1, count = 1, pos;
    
    while(cin >> n and n!=0) {
        lpos = n;
        infoSequence(max,lpos);
        if(lpos == max) pos = count;
        ++count;
    }
    cout << max << ' ' << pos;
    count = 1, pos = 0;
    while(cin >> n and n!=0 and n!=max) ++count;
    
    if(n==max) cout << ' ' << count << endl;
    else cout << " -" << endl;
    
}
