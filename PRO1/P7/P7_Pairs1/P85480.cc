#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

bool is_prime(int n) {
    for(int i = 2; i < int(sqrt(n))+1; ++i) {
        if(n%i == 0) return false;
    }
    return true;
}

bool pairs(vector<int> nums, int n) {
    for(int i = 0; i < n; ++i) {
        for(int j = 0; j < n; ++j) {
            if(j!=i) if(is_prime(nums[i]+nums[j])) return true;
        }
    }
    return false;
}

int main() {
    int n;
    
    while(cin >> n) {
        vector<int> nums;
        int c;
        
        nums.clear();
        for(int i = 0; i < n and cin >> c; ++i) nums.push_back(c);
        
        if(pairs(nums, n)) cout << "yes" << endl;
        else cout << "no" << endl;
    }
}
