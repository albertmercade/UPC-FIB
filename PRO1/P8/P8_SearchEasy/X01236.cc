#include <iostream>
#include <vector>
using namespace std;

typedef vector< vector<char> > Matrix;

bool findWord(int i, int j, const Matrix& letters, string word) {
    string foundWord = "";
    for(int k=0, l=0; k<word.size() and i+k < letters.size() and j+l < letters[0].size(); ++k, ++l) {
        if(letters[i+k][j+l] == word[k]) foundWord += letters[i+k][j+l];
    }
    
    if(foundWord == word) return true;
    return false;
}

bool analyzeSoup (string word, const Matrix& letters) {
    for(int i = 0; i < letters.size(); ++i) {
        for(int j = 0; j < letters[0].size(); ++j) {
            if (letters[i][j] == word[0] and findWord(i, j, letters, word)) return true;
        }
    }
    
    return false;
}

int main() {
    int n;
    cin >> n;
    
    for(int i = 0; i < n; ++i) {
        string word;
        cin >> word;
        
        int r;
        cin >> r;
        
        Matrix letters(r, vector<char>(r));
        for(int k = 0; k < r; ++k) {
            for(int j = 0; j < r; ++j) {
                cin >> letters[k][j];
            }
        }
        
        if(analyzeSoup(word, letters)) cout << "true" << endl;
        else cout << "false" << endl;
        
    }
    
}
