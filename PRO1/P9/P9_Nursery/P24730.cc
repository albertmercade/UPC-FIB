#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
using namespace std;

struct Teacher {
    string name;
    int sweets;
    int carrots;
};

typedef vector <Teacher> ranking;

bool cmp (const Teacher& a, const Teacher& b) {
    if(a.sweets > b.sweets) return true;
    else if (a.sweets == b.sweets) {
        if(a.carrots > b.carrots) return true;
        else if(a.carrots == b.carrots) {
            if(a.name.length() < b.name.length()) return true;
            else if(a.name.length() == b.name.length()) return a.name < b.name;
            else return false;
        }
        else return false;
    }
    else return false;
}

int main() {
    int n;
    cin >> n;
    
    for(int i = 0; i < n; ++i) {
        int k;
        cin >> k;
        ranking rank(k);
        
        for(int j = 0; j < k; ++j) cin >> rank[j].name >> rank[j].sweets >> rank[j].carrots;
        
        sort(rank.begin(),rank.end(), cmp);
        
        for(int j = 0; j < k; ++j) cout << rank[j].name << endl;
        cout << endl;
    }
    
}
