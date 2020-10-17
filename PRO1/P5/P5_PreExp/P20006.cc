#include <iostream>
using namespace std;

int prefixedExpression() {
    char c;
    cin >> c;
    if (c == '+') return prefixedExpression() + prefixedExpression();
    else if (c == '-') return prefixedExpression() - prefixedExpression();
    else if (c == '*') return prefixedExpression() * prefixedExpression();
    else return c - '0';
}

int main() {
    cout << prefixedExpression() << endl;
}