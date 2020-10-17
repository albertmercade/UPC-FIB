#include <iostream>
using namespace std;

void info_sequence(int& sum, int& last) {
    int n;
    sum = 0, last = 0;
    cin >> n;
    if(n==0) last = -1;
    while(n!=0) {
        sum += n;
        last = n;
        cin >> n;
    }
}

int main() {
    int sum = 0, last = 0, sum0, last0, i = 1, total = 0;
    
    while(last != -1) {
        info_sequence(sum, last);
        if(i==1) {
            last0 = last;
            sum0 = sum;
        }
        if(sum == sum0 and last == last0) ++total;
        ++i;
    }
    
    cout << total << endl;
}