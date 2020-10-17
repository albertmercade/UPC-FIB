#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

int main() {
    int n;
    vector<int> even;
    vector<int> odd;
    
    while(cin >> n) {
        if(n!=0) {
            if(n%2 == 0) even.push_back(n);
            else odd.push_back(n);
        }
        else {
            sort(even.begin(),even.end());
            sort(odd.begin(),odd.end());
            
            for(int i = 0; i < even.size(); ++i) {
                if(i!=0) cout << ' ';
                cout << even[i];
            }
            cout << endl;
            
            for(int i = odd.size()-1; i >= 0; --i) {
                if(i != odd.size()-1) cout << ' ';
                cout << odd[i];
            }
            cout << endl;
            
            even.clear();
            odd.clear();
        }
    }
}
