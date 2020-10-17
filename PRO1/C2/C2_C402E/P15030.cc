#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n,p,k;
    char c;
    
    cin >> n >> p >> k >> c;
    
    vector<string> words(n);
    
    for(int i = 0; i < n and cin >> words[i]; ++i);
    
    if(c == 'd') {
        for(int i = 1; i <= k; ++i) {
            if(p+i >= n) p = 0 - i;
            
            if(i == 1) cout << words[p+i];
            else cout << " " << words[p+i];
        }
        cout << endl;
    }
    else {
        for(int i = 1; i <= k; ++i) {
            if(p-i < 0) p = n + i - 1;
            
            if(i == 1) cout << words[p-i];
            else cout << " " << words[p-i];
        }
        cout << endl;
    }
}
