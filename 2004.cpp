#include<iostream>

using namespace std;

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);

    long long n, m;

    cin>>n>>m;  
    long long two = 0, five = 0;
    // 분자 n!
    for(long long i=5; i<=n; i *= 5) {
        five += n/i;
    }
    for(long long i=2; i<=n; i *= 2) {
        two += n/i;
    }
    // 분모 m!
    for(long long i=5; i<=m; i *= 5) {
        five -= m/i;
    }
    for(long long i=2; i<=m; i *= 2) {
        two -= m/i;
    }
    // 분모 (n-m)!
    for(long long i=5; i<=n-m; i *= 5) {
        five -= (n-m)/i;
    }
    for(long long i=2; i<=n-m; i *= 2) {
        two -= (n-m)/i;
    }

    long long result;
    two>five ? result = five : result = two ;
    cout<< result << "\n";

    /*10 3
    10!/ 3! * 10-3 !         

    10 9 8   2 5 3  2 2 
     3 2 1*/
}