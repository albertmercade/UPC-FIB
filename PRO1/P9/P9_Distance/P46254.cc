#include <iostream>
#include <cmath>
using namespace std;

struct Point{
    double x,y;
};

double dist(const Point& a, const Point& b) {
    double x = a.x-b.x, y = a.y-b.y;
    
    return pow(x*x+y*y, 0.5);
}

int main() {
    
}
