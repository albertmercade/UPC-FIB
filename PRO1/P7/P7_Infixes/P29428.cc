#include <iostream>
#include <vector>
#include <string>
#include <cstdio>
#include <cstring>
using namespace std;

int main() {
    int n;
    string str;
    vector<string> words;
    
    cin >> n;
    for(int i = 0; i < n and cin >> str; ++i) words.push_back(str);
    
    for(int i = 0; i<n; ++i) {
        cout << words[i] << ":";
        for(int j = 0; j < n; ++j) {
            if(strstr(words[i].c_str(),words[j].c_str())) cout << " " << words[j];
        }
        cout << endl;
    }
    
}
