//#include <bits/stdc++.h>
#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    int answer=0, checker=0;

    for(int i=0; n>0; i *= 10) {
        int binary = n%2;
        if(binary>0) {
            checker++;
        }
        else {
            if(checker>answer) answer = checker;
            checker = 0;
        }
        n /= 2;
    }
    if(checker>answer) answer = checker;

    cout<<answer<<"\n";
    return 0;
}