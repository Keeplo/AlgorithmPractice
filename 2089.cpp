#include<iostream>

using namespace std;

int main() {
    int n;

    cin>>n;

    int result = 0, squared = 0;

    while(n!=1) {
        if(n%(-2)==0) {
            squared++;
            n /= (-2);
        }
        else {
            result = 10*squared;
            squared = 0;
        }
    }

    if(n==1) result = 1;
    cout<< result << "\n";
}
//1, 110, 111, 100, 101, 11010, 11011, 11000, 11001
//-13  110111