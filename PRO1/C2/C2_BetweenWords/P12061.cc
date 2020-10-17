#include <iostream>
using namespace std;

int main() {
    string word;
    int count = 0;
    bool start = false;
    
    while (cin >> word and word != "end") {
        if(word == "beginning") start = true;
        else if(start) ++count;
    }
    if(word == "end" and start) cout << count << endl;
    else cout << "wrong sequence" << endl;
}
