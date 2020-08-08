// C++ Practice : For Loop

#include <iostream>
#include <cstdio>

using namespace std;

struct Alpha {
    string s[9]; 
};

int main() {
    int a,b;
    struct Alpha alphabet = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};

    cin>>a>>b;

    for(int i=a; i<=b; i++) {
        if(i<=9) {
            cout<< alphabet.s[i-1]<<"\n";
        } else {
            if(i%2==0) {
                cout<<"even\n";
            } else {
                cout<<"odd\n";
            }
        }
    }
    return 0;
}