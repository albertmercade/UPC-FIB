#include <iostream>
#include <vector>
using namespace std;

typedef vector< vector<char> > Matrix;

bool findWord(string& foundWord, int i, int j, int x, int y, const Matrix& letters, Matrix& resultat, string word) {
    foundWord = "";
    for(int k=0, l=0, g=0; g<word.size() and i+k < letters.size() and j+l < letters[0].size(); k+=y, l+=x, ++g) {
        if(letters[i+k][j+l] == word[g]) foundWord += letters[i+k][j+l];
    }
    
    if(foundWord == word) {
        for(int k = 0, l = 0, g = 0; g < word.size(); k += y, l += x, ++g) {
            if(resultat[i+k][j+l] >= 'a') resultat[i+k][j+l] = char(resultat[i+k][j+l]-32);
        }
        return true;
    }
    
    return false;
}



void analyzeSoup (string word, const Matrix& letters, Matrix& resultat) {
    string foundWord;
    
    for(int i = 0; i < letters.size(); ++i) {
        for(int j = 0; j < letters[0].size(); ++j) {
            findWord(foundWord, i, j, 1, 0, letters, resultat, word);
            findWord(foundWord, i, j, 0, 1, letters, resultat, word);
            findWord(foundWord, i, j, 1, 1, letters, resultat, word);
        }
    }
}

int main() {
    int n, r, c, count = 0;
    
    while(cin >> n >> r >> c) {
        if(count != 0) cout << endl;
        
        //save words
        vector <string> words(n);
        for(int i = 0; i < n; ++i) cin >> words[i];
        
        //save soup
        Matrix letters(r, vector<char>(c));
        for(int i = 0; i < r; ++i) {
            for(int j = 0; j < c; ++j) {
                cin >> letters[i][j];
            }
        }
        
        //matrix where the results are saved
        Matrix resultat = letters;
        //look for words
        for(int i = 0; i < n; ++i) analyzeSoup(words[i], letters, resultat);
        
        //print out results
        for(int i = 0; i < resultat.size(); ++i) {
            for(int j = 0; j < resultat[0].size(); ++j) {
                if(j != 0) cout << ' ' << resultat[i][j];
                else cout << resultat[i][j];
            }
            cout << endl;
        }
        
        ++count;
    }
}
