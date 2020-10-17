#include <iostream>
#include <string>
using namespace std;

int main() {
    string romNum;
    
    while(cin >> romNum) {
        int num = 0;
        
        for(int i = 0; i < romNum.length() - 1; ++i){
            if(romNum[i]== 'M') num += 1000;
            else if(romNum[i]== 'D') num += 500;
            else if(romNum[i]== 'C') {
                if(romNum[i+1] == 'D') {
                    num += 400;
                    ++i;
                }
                else if(romNum[i+1] == 'M') {
                    num += 900;
                    ++i;
                }
                else num += 100;
            }
            else if(romNum[i]== 'L') num += 50;
            else if(romNum[i]== 'X') {
                if(romNum[i+1] == 'C') {
                    num += 90;
                    ++i;
                }
                else if(romNum[i+1] == 'L') {
                    num += 40;
                    ++i;
                }
                else num += 10;
            }
            else if(romNum[i]== 'V') num += 5;
            else {
                if(romNum[i+1] == 'V') {
                    num += 4;
                    ++i;
                }
                else if(romNum[i+1] == 'X') {
                    num += 9;
                    ++i;
                }
                else num += 1;
            }
        }
        
        cout << romNum.substr(0,romNum.length()-1) << " = " << num << endl;
    }
}
