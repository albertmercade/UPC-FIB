#include <iostream>
using namespace std;
 
struct Rectangle {
        int x_esq, x_dre, y_baix, y_dalt;
};
 
void llegeix(Rectangle& r) {
    cin >> r.x_esq >> r.x_dre >> r.y_baix >> r.y_dalt;
}
 
int relacio(const Rectangle& r1, const Rectangle& r2) {
        if (r1.x_esq == r2.x_esq and r1.x_dre == r2.x_dre and r1.y_baix == r2.y_baix and r1.y_dalt == r2.y_dalt) return 0;
        if (r1.x_esq >= r2.x_esq and r1.x_dre <= r2.x_dre and r1.y_baix >= r2.y_baix and r1.y_dalt <= r2.y_dalt) return 1;
        if (r1.x_esq <= r2.x_esq and r1.x_dre >= r2.x_dre and r1.y_baix <= r2.y_baix and r1.y_dalt >= r2.y_dalt) return 2;
        if (r1.x_esq > r2.x_dre or r1.x_dre < r2.x_esq or r1.y_dalt < r2.y_baix or r1.y_baix > r2.y_dalt) return 3;
        return 4;
}
       
 
 
 
 
int main() {
        int n;
        cin >> n;
        Rectangle r1, r2;
        for (int i = 0; i < n; ++i) {
            llegeix(r1);
            llegeix(r2);
            if (relacio(r1,r2) == 0) cout << "rectangles are identical" << endl;
            else if (relacio(r1,r2) == 1) cout << "the first rectangle is inside the second one" << endl;
            else if (relacio(r1,r2) == 2) cout << "the second rectangle is inside the first one" << endl;
            else if (relacio(r1,r2) == 3) cout << "rectangles do not intersect" << endl;
            else cout << "rectangles intersect" << endl;
        }
}
