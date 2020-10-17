#include <iostream>
using namespace std;

int main() {
    char c;
    int wordLength = 0, shortWords = 0, medWords = 0, longWords = 0;
    
    while(cin >> c) {
        if(c == '-' or c == '.') {
            if(wordLength>0 and wordLength<5) ++shortWords;
            else if(wordLength >= 5 and wordLength<=9) ++medWords;
            else if(wordLength > 9) ++longWords;
            
            wordLength = 0;
        }
        else ++wordLength;
    }
    
    cout << shortWords << ',' << medWords << ',' << longWords << endl;
}
