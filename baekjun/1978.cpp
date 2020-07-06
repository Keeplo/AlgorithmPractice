//소수찾기

#include<iostream>

using namespace std;
/* // 내 풀이
int go(int a) {
    if(a==1) return 0;
    for(int i=2; i<a; i++) {
        if(a%i==0) 
            return 0; 
    }
    return 1;
}

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);

    int n, count = 0;

    cin>>n;

    int a[n];

    for(int i=0; i<n; i++) {
        cin>>a[i];
        count += go(a[i]);
    }
    cout<<count<<"\n";
}
*/

