#include <iostream>
#include <vector>
using namespace std;

int last_position_of(const vector<int> &v, int x){
    int pos = 0;
    bool found = false;
    
    for(int i = 0; i < v.size(); ++i) {
        if(v[i]==x) {
            pos = i;
            found = true;
        }
    }
    
    if(found) return pos;
    else return v.size();
}

int main() {
    int n;
    
    while(cin >> n) {
        int mean = 0;
        vector<int> nums (n);
        for(int i = 0; i < n and cin >> nums[i]; ++i) {
            mean += nums[i];
        }
        mean /= n;
        
        cout << last_position_of(nums, mean) <<  endl;
    }
}
