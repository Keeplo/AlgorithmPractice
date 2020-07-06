//최대공약수와 최소공배수
#include<iostream>

using namespace std;

int gcd(int a, int b) {
	
	if(b == 0)  return a;
	return gcd(b, a % b);
} 

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);
    
    int t;
    
    cin>>t;

    for(int i=0; i<t; i++) {
        int n;
        cin>>n;
        
        int a[n];
        long long sum = 0;
        for(int j=0; j<n; j++) {
            cin>>a[j];
        }
        for(int x=0; x<n-1; x++) {
            for(int y=x+1; y<n; y++) {
                sum += gcd(a[x], a[y]);
            }
        }
        cout<< sum <<"\n";
    }
}