#include <iostream>
#include <cmath>
using namespace std;

//returns number of digits
int numDigits (int n) {
    int digits = 0;
    if(n==0) return 1;
    while(n!=0) {
        ++digits;
        n /= 10;
    }
    return digits;
}

//return middle digit
int midNum (int n, int digits) {
    int pwr = pow(10,digits/2);
    return (n/pwr)%10;
}

int main() {
    int n, num;
    
    cin >> n;
    
    for(int i = 1, prev = 1, mid = 1; i <= n*2 and prev == mid; ++i) {
        //read next number
        cin >> num;
        //save previous middle number
        prev = mid;
        
        //find value of the middle digit
        int digits = numDigits(num);
        if(digits%2 == 1) mid = midNum(num, digits);
        else {
            if(i%2 == 0) cout << 'A' <<  endl;
            else cout << 'B' <<  endl;
            return 0;
        }
        
        //
        if(i==1) prev = mid;
        //check if the previous middle number is = to the actual one
        if(mid != prev) {
            if(i%2 == 0) cout << 'A' <<  endl;
            else cout << 'B' <<  endl;
            return 0;
        }
    }
    //if its a draw
    cout << '=' << endl;
}
