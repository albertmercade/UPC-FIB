#include <iostream>
#include <vector>
using namespace std;

int first_position_of(const vector<int>& v, int x) {
    for(int i = 0; i < v.size(); ++i) if(v[i] == x) return i;
    return v.size();
}

int main() {
    int n;
    
    while(cin >> n) {
        vector<int> v (n);
        int min;
        for(int i = 0; i < n and cin >> v[i]; ++i) {
            if(i == 0) min = v[i];
            if(min>v[i]) min = v[i];
        }
        
        cout << first_position_of(v, 2*min) << endl;
        
    }
}
