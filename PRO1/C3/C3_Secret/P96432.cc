#include <iostream>
#include <vector>
using namespace std;

struct person {
    string name;
    int cash;
};

typedef vector <person> People;

int main() {
    int n;
    cin >> n;
    
    for(int i = 0; i < n; ++i) {
        int numParticipants;
        cin >> numParticipants;
        
        People p(2*numParticipants);
                
        for(int j = 0; j < numParticipants; ++j) {
            string giver, receiver;
            int cash;
            cin >> giver >> receiver >> cash;
            
            person per;
            per.name = giver;
            per.cash = -cash;
            p.pushback(per);
            
            per.name = receiver;
            per.cash = cash;
            p.pushback(per);
        }
        for(int j = 0; j < numParticipants; ++j){
            
        }
    }
}
