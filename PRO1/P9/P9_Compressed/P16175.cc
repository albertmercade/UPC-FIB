#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

struct Pairs {
    int value;
    int pos;
};

typedef vector<Pairs> Com_Vec;

bool cmp (const Pairs& a, const Pairs& b) {
    return a.pos < b.pos;
}

Com_Vec sum(const Com_Vec& v1, const Com_Vec& v2) {
    Com_Vec v = v1;
    for(int i = 0; i < v2.size(); ++i) {
        bool found = false;
        for(int j = 0; j < v.size(); ++j) {
            if(v2[i].pos == v[j].pos) {
                v[i].value += v2[j].value;
                found = true;
            }
        }
        if(!found) v.push_back(v2[i]);
    }

    sort(v.begin(),v.end(),cmp);

    return v;
}

void read(Com_Vec& v) {
    int w;
    cin >> w;
    cout << w << endl;

    Pairs p;
    char c,k;

    for(int i = 0; i < w; ++i) {
        cin >> c >> p.value >> k >> p.pos;
        cout << p.value << ' ' << p.pos << endl;
        v.push_back(p);
    }
}

int main() {
    int n;
    cin >> n;

    for(int i = 0; i < n; i++) {
        Com_Vec v1;
        read(v1);
        Com_Vec v2;
        read(v2);

        //v1 = sum(v1, v2);
    }
}
