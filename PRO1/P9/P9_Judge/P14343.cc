#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
using namespace std;

struct Submission { 
    string idn;
    string exer;
    int time;
    string res;
};

struct Most {
    string idn;
    int numTimes;
};

typedef vector<Submission> History;

bool cmpIdn (const Submission& a, const Submission& b) {
    return a.idn < b.idn;
}

bool cmpTime (const Submission& a, const Submission& b) {
    return a.time > b.time;
}

Most greenSubmissions (const History& entries) {
    string prev = "";
    int count;
    
    Most win;
    win.idn = "999999999";
    win.numTimes = 0;
    
    for (int i = 0; i < entries.size(); ++i) {
        if(prev == entries[i].idn) {
            if(entries[i].res == "green") ++count;
        }
        else {
            if(count > win.numTimes) {
                win.numTimes = count;
                win.idn = prev;
            }
            else if(count == win.numTimes and entries[i].idn < win.idn) win.idn = prev;
            
            count = 0;
            if(entries[i].res == "green") ++count;
        }
        prev = entries[i].idn;
    }
    
    return win;
}

int main() {
    int n;
    cin >> n;
    
    History entries (n);
    
    for(int i = 0; i < n; ++i) cin >> entries[i].idn >> entries[i].exer >> entries[i].time >> entries[i].res;
    
    sort(entries.begin(),entries.end(),cmpIdn);
    
    //green submission
    Most win = greenSubmissions(entries);
    if (win.numTimes != 0) cout << "student with more green submissions:       " << win.idn << " (" << win.numTimes << ")" << endl;
    else cout << '-' << endl;
    
    //last submission
    sort(entries.begin(),entries.end(),cmpTime);
    cout << "student who has done the last submission:  " << entries[0].idn << endl;
}
