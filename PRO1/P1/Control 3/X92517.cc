#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

// Post: Returns a vector v of 151 positions (0 to 150), where:
//    v[i] is true if 'i' is a prime number,
//    v[i] is false otherwise
vector<bool> precompute_primes() {
    // Add your code here
    vector<bool> primes(151,false);

    for(int i = 2; i < 151; i+=2) {
        if(i==2) {
            primes[i] = true;
            ++i;
        }

        bool divisorFound = false;
        for(int j = 2; j < int(sqrt(i))+1 and !divisorFound; ++j) {
            if(i%j == 0) divisorFound = true;
        }

        if(!divisorFound) primes[i] = true;
    }

    return primes;
}

int main() {
   // Add your code here ...
   string city, name = "";
   int census, age;
   bool first = true;

   vector<bool> primes = precompute_primes();

   while(cin >> city >> census) {
       if(!first) cout << endl;
       first = false;
       
       cout << city << endl;

       for(int i = 0; i < census; ++i) {
           cin >> name >> age;
           if(name[0] == city[0] and primes[age]) {
               cout << name << ' ' << age << endl;
           }
       }
   }
}
