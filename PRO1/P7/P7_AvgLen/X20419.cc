#include <iostream>
#include <vector>
#include <string>
using namespace std;

char most_frequent_letter(const string& s) {
    int length = s.length();
    
    int total = 0, prevTotal = 0;
    char c, cMost = 'z';
    
    for(int i = 0; i < length; ++i) {
        total = 0;
        c = s[i];
        for(int j = 0; j < length; ++j) if(s[j] == c) ++total;
        if(total >= prevTotal) {
            if(total > prevTotal) {
                prevTotal = total;
                cMost = c;
            }
            else if(total == prevTotal) {
                if(c < cMost) {
                    cMost = c;
                    prevTotal = total;
                }
            }
        }
    }
    return cMost;
}

int main() {
    cout.setf(ios::fixed);
    cout.precision(2);
    
    int n;
    float length = 0;
    vector<string> words;
    string str;

    cin >> n;
    
    words.clear();
    for(int i = 0; i < n and cin >> str; ++i) {
        words.push_back(str);
        length += str.length();
    }
    length /= n;
    
    cout << length << endl;
    
    for(int i = 0; i < n; ++i) {
        if(words[i].length() >= length) {
            cout << words[i] << ": "<< most_frequent_letter(words[i]) << endl;
        }
    }
}
