#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n, c;
    vector<int> nums;
    
    while(cin >> n) {
        bool ok = false;
        int sum = 0;
        
        nums.clear();
        for(int i = 0; i<n and cin >> c; ++i) {
            nums.push_back(c);
            sum += c;
        }
        
        for(int i = 0; i < n and ok == false; ++i) {
            if(nums[i] == sum-nums[i]) {
                cout << "YES" << endl;
                ok = true;
            }
        }
        if(ok != true)cout << "NO" << endl;
    }
}
