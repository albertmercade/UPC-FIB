#include <iostream>
#include <vector>
using namespace std;

bool sumRest(const vector<int>& nums, int sum, int n) {
    for(int i = 0; i < n; ++i) {
        if(nums[i] == sum - nums[i]) return true;
    }
    return false;
}

int main() {
    int n;
    
    while(cin >> n) {
        int c, sum = 0;
        vector<int> nums;
        
        nums.clear();
        for(int i = 0; i < n and cin >> c; ++i) {
            nums.push_back(c);
            sum += c;
        }
        
        if (sumRest(nums, sum, n)) cout << "YES" << endl;
        else cout << "NO" << endl;
    }
}
