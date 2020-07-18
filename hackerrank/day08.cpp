#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <map>
using namespace std;


int main() {
    int n;

    cin>>n;

    map<string, int> finder;

    for(int i=0; i<n; i++) {
        string name;
        int num;
        cin>>name;
        cin>>num;

        finder.insert(make_pair(name, num));
    }

    string seekName;
    while(cin>>seekName) {
        if(finder.find(seekName)==finder.end()) {
            cout<<"Not found"<<"\n";
        } else {
            cout<<seekName<<"="<<finder.find(seekName)->second<<"\n";
        }
    }
    return 0;
}