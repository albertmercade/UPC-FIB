#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

typedef struct {
    string id;
    int num;
} MultiElem;

typedef vector<MultiElem> MultiSet;

MultiSet readMultiSet() {
    int n;
    cin >> n;
    MultiSet v(n);
    for (int i=0; i<n; ++i) cin >> v[i].id >> v[i].num;
    return v;
}

void writeMultiSet(const MultiSet& m) {
    for (int i=0; i<m.size(); ++i) {
        cout << "(" << m[i].id << " , " << m[i].num << ")" << endl;
    }
}

bool emptyMultiSet(const MultiSet& m) {
    return m.size() == 0;
}

bool cmp(const MultiElem& a, const MultiElem& b) {
    return a.id < b.id;
}

MultiSet unionMultiSets(MultiSet& m1, MultiSet& m2) {
    // afegiu aqu ́ı el codi demanat
    sort(m1.begin(),m1.end(),cmp);
    sort(m2.begin(),m2.end(),cmp);

    MultiSet m3(0);
    MultiElem m;
    int n1 = m1.size(), n2 = m2.size();
    int i1 = 0, i2 = 0;

    while(i1<n1 and i2<n2) {
        if(m1[i1].id == m2[i2].id) {
            m.id = m1[i1].id;
            m.num = m1[i1].num + m2[i2].num;
            ++i1;
            ++i2;
        }
        else if (m1[i1].id < m2[i2].id) {
            m.id = m1[i1].id;
            m.num = m1[i1].num;
            ++i1;
        }
        else {
            m.id = m2[i2].id;
            m.num = m2[i2].num;
            ++i2;
        }
        m3.push_back(m);
    }
    while(i1<n1) {
        m = m1[i1];
        ++i1;
        m3.push_back(m);
    }
    while(i2<n2) {
        m = m2[i2];
        ++i2;
        m3.push_back(m);
    }

    return m3;
}

int main() {
    // afegiu aqu ́ı el codi demanat
    MultiSet m = readMultiSet(), m1(0);

    while(!emptyMultiSet(m)) {
        m1 = unionMultiSets(m, m1);
        m = readMultiSet();
    }

    writeMultiSet(m1);
}
