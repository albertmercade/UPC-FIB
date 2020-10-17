#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n, c, total1, total2, prev;
    vector<int> numbers;
    
    while(cin >> n) {
        total1 = 0, total2 = 0, prev = 0, numbers.clear();
        
        for(int i = 0; i < n and cin >> c; i++) numbers.push_back(c);
        
        for(int i = 0; i < n; ++i) {
            total1 += numbers[i];
            if(total1 > prev) prev = total1;
        }
        total1 = prev;
        
        prev = 0;
        for(int i = n-1;  0 <= i; --i) {
            total2 += numbers[i];
            if(total2 > prev) prev = total2;
        }
        total2 = prev;
        
        cout << total1 << ' ' << total2 << endl;
    }
}
