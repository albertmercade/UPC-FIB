#include <iostream>
#include <string>
using namespace std;

string romanNumber (int n) {
    string numRoman = "";
    
    while(n!=0) {
        if(n<10) {
            if(n==9) numRoman+= "IX";
            else if(n == 4) numRoman += "IV";
            else if(n >= 5) {
                numRoman += "V";
                for(int i = 0; i < n-5; ++i) numRoman += "I";
            }
            else {
                for(int i = 0; i < n; ++i) numRoman += "I";
            }
            n=0;
        }
        else if(n<50) {
            if(n>=40) numRoman += "XL";
            else {
                for(int i = 0; i < n/10; ++i) numRoman += "X";
            }
            n %= 10;
        }
        else if(n<100) {
            if(n>=90) numRoman += "XC";
            else {
                numRoman += "L";
                for(int i = 0; i < n/10 - 5; ++i) numRoman += "X";
            }
            n %= 10;
        }
        else if(n<500) {
            if(n>=400) numRoman += "CD";
            else {
                for(int i = 0; i < n/100; ++i) numRoman += "C";
            }
            n %= 100;
        }
        else if(n<1000) {
            if(n>=900) numRoman += "CM";
            else {
                numRoman += "D";
                for(int i = 0; i < n/100 - 5; ++i) numRoman += "C";
            }
            n %= 100;
        }
        else {
            for(int i = 0; i < n/1000; ++i) numRoman += "M";
            n %= 1000;
        }
    }
    
    return numRoman;
}

int main() {
    int n;
    
    while(cin >> n) {
        cout << n << " = " << romanNumber(n) << endl;
    }
}
