#include<iostream>

using namespace std;

int go(int n) {
    if(n<2) return 1;
    
    return n *= go(n-1);
}

int main() {
    int n;

    cin>>n;

    cout<<go(n)<<"\n";
}