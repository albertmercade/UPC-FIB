#include <iostream>
using namespace std;

bool is_leap_year(int year) {
    if (year % 100 == 0) {
        if ((year/100)%4 == 0) return true;
        else return false;
    }
    else if (year%4 == 0) return true;
    else return false;
}

int main() {
    int year;

    while (cin >> year) cout << boolalpha << is_leap_year(year) << endl;
}