//최소공배수

#include<iostream>

using namespace std;

int gcd(int a, int b) {
	
	if(b == 0)  return a;
	return gcd(b, a % b);
} 

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);
    
    int t, a[1000], b[1000];

    cin>>t;

    for(int i=0; i<t; i++) {
        cin>>a[i]>>b[i];
    }
    
    for(int i=0; i<t; i++) {
        cout<< gcd(a[i], b[i]) * (a[i]/gcd(a[i], b[i])) * (b[i]/gcd(a[i], b[i]))<<"\n";
    }
}