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

void read(Point& p) {
    cin >> p.x >> p.y;
}

void read(Circle& c) {
    read(c.center);
    cin >> c.radius;
}

double dist(const Point& a, const Point& b) {
    double x = a.x-b.x;
    double y = a.y-b.y;
    
    return pow(x*x + y*y,0.5);
}

void move(Point& p1, const Point& p2) {
    p1.x += p2.x;
    p1.y += p2.y;
}

int main() {
    Circle c;
    Point p;
    
    read(c);
    read(p);
    
    double d = dist(p,c.center);
    
    bool where;
    
    if(d < c.radius) {
        cout << "initially inside" << endl;
        where = true;
    }
    else {
        cout << "initially outside" << endl;
        where = false;
    }
    
    int n;
    cin >> n;
    
    for(int i = 0; i < n; ++i) {
        Point newP;
        read(newP);
        
        move(p,newP);
        
        d = dist(p,c.center);
        
        if(d < c.radius) {
            if(!where) {
                cout << "in the step " << i+1 << " has gone in" << endl;
                where = true;
            }
        }
        else {
            if(where) {
                cout << "in the step " << i+1 << " has gone out" << endl;
                where = false;
            }
        }
    }
}
