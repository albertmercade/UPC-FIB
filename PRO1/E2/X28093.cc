#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main() {
    string str1, str2, word, prevword = "";
    int count = 0;
    
    cin >> str1 >> str2;
    
    int len1 = str1.length(), len2 = str2.length();
    
    while (cin >> word) {
        if(prevword.length() == len1 and word.length() == len2) ++count;
        prevword = word;
    }
    
    cout << count << endl;
}
