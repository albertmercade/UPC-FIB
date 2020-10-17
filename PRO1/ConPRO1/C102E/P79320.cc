#include <iostream>
using namespace std;

int main() {

    string str;
    cin >> str;
    
    if (str == "arrissats") cout << "@@@@@" << endl;
    else if (str == "llisos") cout << "VVVVV" << endl;
    else if (str == "pentinats") cout << "XXXXX" << endl;
    
    cin >> str;
    if (str == "aclucats") cout << ".-.-." << endl;
    else if (str == "rodons") cout << ".o-o." << endl;
    else if (str == "estrellats") cout << ".*-*." << endl;
    
    
    cin >> str;
    if (str == "axafat") cout << "..0.." << endl;
    else if (str == "arromangat") cout << "..C.." << endl;
    else if (str == "aguilenc") cout << "..V.." << endl;
    
    cin >> str;
    if (str == "normal") cout << ".===." << endl;
    else if (str == "bigoti") cout << ".~~~." << endl;
    else if (str == "dents-sortides") cout << ".www." << endl;
    
}