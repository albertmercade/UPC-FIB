#include <iostream>
#include <vector>
using namespace std;

void moda(int n, const vector<int>& nums) {
    int countMax = 0, maxNum, maxAux;
    for(int i = 0; i < n; ++i) {
        int count = 0;
        for(int j = 0; j < n; ++j) {
            if(nums[i] == nums[j]) {
                ++count;
                if(count > countMax) {
                    countMax = count;
                    maxNum = nums[i];
                    maxAux = nums[i];
                }
                else if(count == countMax and nums[i]>maxAux) {
                    maxNum = nums[i];
                    maxAux = nums[i];
                    countMax = count;
                }
            }
        }
    }
        
    cout << maxNum << endl;
}

int main() {
    int n;
    
    while(cin >> n){
        vector<int> nums (n);
        for(int i = 0; i < n and cin >> nums[i]; ++i);
        
        moda(n, nums);
    }
}
