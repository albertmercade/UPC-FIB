#include <iostream>
#include <cmath>
using namespace std;

struct Point{
    double x,y;
};

struct Circle{
    Point center;
    double radius;
};

double dist(const Point& a, const Point& b) {
    double x = a.x-b.x;
    double y = a.y-b.y;
    
    return pow(x*x + y*y,0.5);
}

void move(Point& p1, const Point& p2) {
    p1.x += p2.x;
    p1.y += p2.y;
}

void scale(Circle& c, double sca) {
    c.radius *= sca;
}

void move(Circle& c, const Point& p) {
    c.center.x += p.x;
    c.center.y += p.y;
}

bool is_inside(const Point& p, const Circle& c) {
    double distance = dist(c.center, p);
    if (distance < c.radius) return true;
    else return false;
}

int main() {
    
}

