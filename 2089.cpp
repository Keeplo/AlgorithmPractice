#include<iostream>

using namespace std;

int main() {
    int n;

    cin>>n;

    int result = 0;


    result = n % (2);

    cout<< result << "\n";
}
//       -5 -4  -3 -2 -1 0 1 2 3 4 5 
//       -6 -4  -4 -2 -2 0 0 2 2 4 4
//        1  0   1  0  1 0 1 0 1 0 1
//1  2    3    4   5     6      7      8      9
//1, 110, 111, 100, 101, 11010, 11011, 11000, 11001
//-1 -2 -3    
//11 10 1101
// 4진법 +  -2
//-13  110111

