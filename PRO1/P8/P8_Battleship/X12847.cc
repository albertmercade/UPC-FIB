#include <iostream>
#include <vector>
#include <string>
#include <cstdlib>
using namespace std;

typedef vector< vector<bool> > Board;

void fillBoard(Board& a) {
    for(int i = 0; i < 10; ++i) {
        string word;
        cin >> word;
        
        int y = word[0] - 97;
        word = word.erase(0,1);
        int x = atoi(word.c_str())-1;
        
        int n;
        cin >> n;
        char c;
        cin >> c;
        
        if(c == 'h') for(int j = 0; j < n; ++j) a[y][x+j] = true;
        else for(int j = 0; j < n; ++j) a[y+j][x] = true;
    }
}

void printBoard(Board& a) {
    
    cout << "  ";
    for(int i = 1; i <= 10; ++i) cout << i;
    cout << endl;
    
    for(int i = 0; i < 10; ++i) {
        cout << char(97+i) << ' ';
        for(int j = 0; j < 10; ++j) {
            if(a[i][j]==true) cout << 'X';
            else cout << '.';
        }
        cout << endl;
    }
}

int distance(int x, int y, Board& a) {
    int dist, k = 1;
    bool found = false;
    
    while(!found) {
        for(int i = -k; i < k+1 and !found; ++i){
            if(y-k>=0 and x+i<10 and x+i>=0 and a[y-k][x+i]) {
                dist = k;
                found = true;
            }
            else if(y+i>=0 and y+i<10 and x-k>=0  and a[y+i][x-k]) {
                dist = k;
                found = true;
            }
            else if(y+k<10 and x+i<10 and x+i>=0 and a[y+k][x+i]) {
                dist = k;
                found = true;
            }
            else if(y+i>=0 and y+i<10 and x+k<10  and a[y+i][x+k]) {
                dist = k;
                found = true;
            }
        }
        
        ++k;
    }
    
    return dist;
}

void touched(int x, int y, Board& a, string guess) {
    if(a[y][x] == true) cout << guess << " touched!" << endl;
    else {
        cout << guess << " water!";
        
        int min = distance(x,y,a);
        
        cout << " closest ship at distance " << min << endl;
    }
}

int main() {
    Board a (10, vector<bool>(10, false));
    
    fillBoard(a);
    printBoard(a);
    
    cout << endl;
    
    string guess;
    while(cin >> guess) {
        int y = guess[0] - 97;
        string num = guess;
        num = num.erase(0,1);
        int x = atoi(num.c_str())-1;
        
        touched(x,y,a,guess);
    }
}
