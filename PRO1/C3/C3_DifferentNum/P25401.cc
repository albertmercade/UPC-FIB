#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    int n;
    while(cin >> n) {
        vector <int> nums(n);
        int size = nums.size();
        for(int i = 0; i < size; ++i) cin >> nums[i];
        
        sort(nums.begin(),nums.end());
        
        int count = 1;
        
        for(int i = 1; i < size; ++i) {
            if(nums[i]!=nums[i-1]) ++count;
        }
        
        cout << count << endl;
    }
}
