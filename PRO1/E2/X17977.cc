#include <iostream>
using namespace std;

int main() {
    int a,b, count = 0;

    cin >> a >> b;
    
    string word, prevword="";
    
    while (cin >> word) {
        if(prevword.length()%a == 0 and word.length()%b == 0 and prevword!="") ++count;
        prevword = word;
    }
    
    cout << count << endl;
}
