#include <iostream>
#include <vector>
 
using namespace std;
 
struct Subject {
    string name;
    double mark;
};
 
struct Student {
    string name;
    int idn;
    vector<Subject> sub;
};
 
double mark(const vector<Student>& stu, int idn, string name){
    bool f = true;
    for(int i = 0; i < stu.size() and f; ++i){
        Student st = stu[i];
        if(st.idn == idn){
            for(int s = 0; s < st.sub.size(); ++s){
                if(st.sub[s].name == name && st.sub[s].mark >= 0)
                    return st.sub[s].mark;
            }
            f = false;
        }
    }
    return -1;
}
 
double mean(const vector<Subject>& sub){
    double m = 0;
    int c = 0;
    for(int i = 0 ;i < sub.size(); ++i){
        if(sub[i].mark >= 0){
            ++c;
            m += sub[i].mark;
        }
    }
    return m/c;
}
 
void count(const vector<Student>& stu, int idn, string name, int& counter){
    counter = 0;
    double n = mark(stu, idn, name);
    for(int i = 0; i < stu.size(); ++i){
        Student s = stu[i];
        if(mean(s.sub) > n)
            counter++;
    }
}
 
int main() {
    int n;
    cin >> n;
    vector<Student> v(n);
    int j = 0;
    while(n--){
        cin >> v[j].name >> v[j].idn;
        int ns;
        cin >> ns;
        int i = 0;
        vector<Subject> vs(ns);
        while(i < ns){
            cin >> vs[i].name >> vs[i].mark;
            ++i;
        }
        v[j].sub = vs;
        ++j;
    }
    int i;
    string s;
    while(cin >> i >> s){
        int c;
        count(v, i, s, c);
        cout << c << endl;
    }
}
