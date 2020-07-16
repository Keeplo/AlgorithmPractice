#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    int n;
    string str;

    cin>>n;
    
    for(int i=0; i<n; i++) {
        string a1, a2;
        cin>>str;
        for(int j=0; j<str.size(); j++) {
            if(j%2==0) a1 += str[j];
            else a2 += str[j];
        }
        cout<<a1<<" "<<a2<<"\n";
    }

    return 0;
}