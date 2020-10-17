#include <iostream>
#include <cmath>
using namespace std;

double dist_or(double x, double y) {
    return pow((x*x+y*y),0.5);
}

int main() {
    double x, y;
    
    cin >> x >> y;
    
    cout << dist_or(x,y) << endl;
}