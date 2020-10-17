#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int>  nums;
    int n, c, total = 0;
    
    cin >> n;
    
    for (int i = 0; i<n and cin >> c; ++i) {
        nums.push_back(c);
    }
    for (int i = 0; i < n-1; ++i) if(nums[i] == nums[n-1]) ++total;
    
    cout << total << endl;
}
