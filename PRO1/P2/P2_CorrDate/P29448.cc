#include <iostream>
using namespace std;


bool leapYear (int year) {
    if (year % 100 == 0) {
        if ((year/100)%4 == 0) return true;
        else return false;
    }
    else if (year%4 == 0) return true;
    else return false;
}

int main() {

    int year, month, day;
  
    while(cin >> day >> month >> year) {
    
        if (month > 12 or month < 1 or day < 1 or day > 31) cout << "Incorrect Date" << endl;
        
        else {
            if (leapYear(year)) {
                if (month == 2 and day <= 29 and day >= 1) cout << "Correct Date" << endl;
                else if(month == 1 or month == 3 or month == 5 or month == 7 or month == 8 or month == 10 or month == 12) cout << "Correct Date" << endl;
                else if((month == 4 or month == 6 or month == 9 or month == 11) and day <= 30) cout << "Correct Date" << endl;
                else cout << "Incorrect Date" << endl;
            }
            
            else {
                if (month == 2 and day <= 28 and day >= 1) cout << "Correct Date" << endl;
                else if(month == 1 or month == 3 or month == 5 or month == 7 or month == 8 or month == 10 or month == 12) cout << "Correct Date" << endl;
                else if((month == 4 or month == 6 or month == 9 or month == 11) and day <= 30) cout << "Correct Date" << endl;
                else cout << "Incorrect Date" << endl;
            }
        }
    }
    
}   