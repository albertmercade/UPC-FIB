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
 
void read(Circle& c) {
   cin >> c.center.x >> c.center.y >> c.radius;
}
 
int relationship(const Circle& c1, const Circle& c2) {
    if (dist(c1.center,c2.center)+c1.radius < c2.radius) return 1;
    else if (dist(c1.center,c2.center)+c2.radius < c1.radius) return 2;
    else if(dist(c1.center,c2.center) > (c1.radius + c2.radius)) return 0;
    else return 3;
}

void printRelationship(int n) {
    if(n==0) cout << "circles do not intersect" << endl;
    else if(n==1) cout << "the first circle is inside the second one" << endl;
    else if(n==2) cout << "the second circle is inside the first one" << endl;
    else if(n==3) cout << "circles intersect" << endl;
}
 
int main() {
    Circle c1, c2;
    
    read(c1);
    read(c2);
    
    int t = relationship(c1,c2);
    printRelationship(t);
    
    int n;
    string op;
    
    while(cin >> n >> op) {
        if(n==1) {
            if(op == "scale") {
                int sca;
                cin >> sca;
                c1.radius *= sca;
            }
            else {
                Point p;
                cin >> p.x >> p.y;
                c1.center.x += p.x;
                c1.center.y += p.y;
            }
        }
        else {
            if(op == "scale") {
                int sca;
                cin >> sca;
                c2.radius *= sca;
            }
            else {
                Point p;
                cin >> p.x >> p.y;
                c2.center.x += p.x;
                c2.center.y += p.y;
            }
        }
        
        t = relationship(c1,c2);
        printRelationship(t);
    }
    
    
    
}
