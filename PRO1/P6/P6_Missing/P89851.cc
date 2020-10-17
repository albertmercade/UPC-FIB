#include <iostream>
using namespace std;

int main() {
    int n, num;
    
    while(cin >> n) {
        int sum = 0;
        int sum2 = n*(n+1)/2;
        
        for(int i = 1; i < n and cin>>num; ++i) sum += num;
        
        cout << sum2-sum << endl;
    }
}