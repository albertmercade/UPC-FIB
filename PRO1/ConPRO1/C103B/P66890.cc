#include <iostream>
using namespace std;

int main() {
    cout.setf(ios::fixed);
    cout.precision(2);

    double e,f,g,x,y,z;
    
    cin >> e >> f >> g >> x >> y >> z;

    cout << "Torno amb " << ((e*x - f)*y - g)*z << " euros." << endl;
    
}