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

bool is_valid_date(int d, int m, int y) {
    if (m > 12 or m < 1 or d < 1 or d > 31) return false;
        
    else {
        if (leapYear(y)) {
            if (m == 2 and d <= 29 and d >= 1) return true;
            else if(m == 1 or m == 3 or m == 5 or m == 7 or m == 8 or m == 10 or m == 12) return true;
            else if((m == 4 or m == 6 or m == 9 or m == 11) and d <= 30) return true;
            else return false;
        }
        
        else {
            if (m == 2 and d <= 28 and d >= 1) return true;
            else if(m == 1 or m == 3 or m == 5 or m == 7 or m == 8 or m == 10 or m == 12) return true;
            else if((m == 4 or m == 6 or m == 9 or m == 11) and d <= 30) return true;
            else return false;
        }
    }
}

int main() {

    int year, month, day;
  
    while(cin >> day >> month >> year) is_valid_date(day, month, year);
    
}   