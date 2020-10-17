#include <iostream>
#include <vector>
using namespace std;

vector<bool> ramp_pos(const vector<int>& v) {
    int prev, mid, size = v.size();
    vector<bool> ramps;
    
    for(int i = 0; i < size; ++i) {
        if(((prev<mid and mid<v[i]) or (prev>mid and mid>v[i])) and i>1) ramps.push_back(true);
        else if(i>1) ramps.push_back(false);
        prev = mid;
        mid = v[i];
    }
    ramps.push_back(false);
    ramps.push_back(false);
    
    return ramps;
}

int pot_conflictive(const vector<bool>& b) {
    int pot = 0, size = b.size();
    
    for(int i = 0; i < size; ++i) {
        if (b[i+1] == 1 and b[i]==1) {
            ++pot;
        }
        if (b[i] == 1 and b[i+2]==1) {
            ++pot;
        }
    }
    
    return pot;
}

int main() {
    int n,c;
    vector<int> v;
    
    while(cin >> n){
        v.clear();
        for(int i = 0; i < n and cin >> c; ++i) v.push_back(c);
        
        vector<bool> ramps = ramp_pos(v);
        
        cout << "positions with a ramp:";
        for(int i = 0; i < n; ++i) if(ramps[i]==true) cout << ' ' << i;
        cout << endl;
        
        cout << "potentially conflictive: " << pot_conflictive(ramps) << endl;
        cout << "---" << endl;
    }
}
