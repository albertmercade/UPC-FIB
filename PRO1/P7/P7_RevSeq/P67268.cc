#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int>  nums;
    int n, c;
    
    while(cin >> n) {
        nums.clear();
        for (int i = 0; i<n and cin >> c; ++i) {
            nums.push_back(c);
        }
        for (int i = n-1; i>=0; --i) {
            if(i>0) cout << nums[i] << ' ';
            else cout << nums[i];
        }
        cout <<  endl;
    }
}
