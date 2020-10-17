#include <iostream>
#include <sstream>
using namespace std;

int fatten(int x) {
    int fattenNum = 0, prev = 0;
    stringstream ss;
    
    ss << x;
    string num = ss.str();
    
    for (int i = 0; i < num.length(); ++i) {
        if ((num[i]-'0') < prev) {
            fattenNum = fattenNum*10 + prev;
        }
        else {
            fattenNum = fattenNum*10 + (num[i]-'0');
            prev = num[i] - '0';
        }
        
    }
    
    return fattenNum;
}

int main() {
    int n = 56;
    while(cin >> n) {
        cout << fatten(n) << endl;
    }

}