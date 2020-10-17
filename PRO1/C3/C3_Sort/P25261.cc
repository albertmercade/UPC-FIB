#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    int n;
    
    while(cin >> n) {
        vector<int> nums (n);
        for(int i = 0; i < n; ++i) cin >> nums[i];
        
        sort(nums.begin(),nums.end());
        
        for(int i = n-1; i >= 0; --i) {
            cout << nums[i];
            if(i!=0) cout << ' ';
        }
        cout << endl;
    }
}
