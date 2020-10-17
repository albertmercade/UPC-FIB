#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

struct pais {
    string nombre;
    int oro, plata, bronce;
};

typedef vector <pais> Ranking;

bool comp(const pais& a, const pais& b) {
    if(a.oro != b.oro) return a.oro > b.oro;
    else if(a.plata != b.plata) return a.plata > b.plata;
    else if(a.bronce != b.bronce) return a.bronce > b.bronce;
    else return a.nombre < b.nombre;
}

int main() {
    int n;
    cin >> n;

    Ranking r(n);

    for(int i = 0; i < n; i++) {
        cin >> r[i].oro >> r[i].plata >> r[i].bronce >> r[i].nombre;
    }

    sort(r.begin(),r.end(),comp);

    for(int i = 0; i < n; i++) {
        int tot = r[i].oro + r[i].plata + r[i].bronce;
        cout << r[i].nombre << ' ' << r[i].oro << ' ' << r[i].plata << ' ' <<
        r[i].bronce << ' ' << tot << endl;
    }
}
