#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n;
    
    cin >> n;
    
    vector<int> nums (n), pos (n);
    for(int i = 0; i<n and  cin >> nums[i]; ++i);
    for(int i = 0; i<n and  cin >> pos[i]; ++i);
    
    for(int i = 0; i < n; ++i) {
        for(int j = 0; j < n; ++j) {
            if(i == pos[j] and i != 0) cout << ' ' << nums[j];
            else if(i == pos[j]) cout << nums[j];
        }
    }
    
    cout << endl;
}
