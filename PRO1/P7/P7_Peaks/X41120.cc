#include <iostream>
#include <vector>
using namespace std;

vector<int> obtain_peaks(const vector<int>& v) {
    int size = v.size();
    vector<int> peaks;
    
    for(int i = 1; i < size-1; ++i) {
        if(v[i-1]<v[i] and v[i+1]<v[i]) peaks.push_back(v[i]);
    }
    return peaks;
}

int main() {
    vector<int> v;
    int n, c;
    
    cin >> n;
    for(int i = 0; i < n and cin >> c; ++i) v.push_back(c);
    
    vector<int> peaks = obtain_peaks(v);
    int size = peaks.size();
    cout << size << ':';
    
    for(int i = 0; i < size; ++i) cout << ' ' << peaks[i];
    cout << endl;
    
    int ok = 0;
    for(int i = 0; i < size-1; ++i) {
        if(peaks[size-1] < peaks[i] and ok == 0) {
            cout << peaks[i];
            ok = 1;
        }
        else if (peaks[size-1] < peaks[i]) cout << ' ' << peaks[i];
    }
    
    if(ok == 0) cout << '-';
    cout << endl;
}
