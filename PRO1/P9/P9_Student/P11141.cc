#include <iostream>
#include <vector>
using namespace std;

struct Student{
    int idn;
    string name;
    double mark;
    bool repeater;
};

void information(const vector<Student>& stu, double& min, double& max, double& avg) {
    avg = 0, max = 0, min = 10;
    
    double count = 0;
    for(int i = 0; i < stu.size(); ++i) {
        if(stu[i].mark != -1 and stu[i].repeater == false) {
            avg += stu[i].mark;
            if(stu[i].mark < min) min = stu[i].mark;
            if(stu[i].mark > max) max = stu[i].mark;
            ++count;
        }
    }
    
    if(count == 0) avg = -1, min = -1, max = -1;
    else avg /= count;
}

int main() {
    
}
