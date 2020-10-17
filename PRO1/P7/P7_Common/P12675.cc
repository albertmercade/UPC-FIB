#include <iostream>
#include <vector>
using namespace std;

int common_elements(const vector<int>& x, const vector<int>& y) {
    int count = 0, i = 0, j = 0;
    
    while(i < x.size() and j < y.size()) {
        if(x[i] == y[j]) {
            ++i;
            ++j;
            ++count;
        }
        else if(x[i]>y[j]) ++j;
        else if(x[i]<y[j]) ++i;
    }
    
    return count;
}

int main() {
    /*vector<int> x;
    vector<int> y;
    int n;
    
    while(cin >> n and n!=0) x.push_back(n);
    while(cin >> n and n!=0) y.push_back(n);
    
    cout << common_elements(x,y) << endl;*/
}
