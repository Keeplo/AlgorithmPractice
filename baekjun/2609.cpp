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
    
    int a, b;

    cin>>a>>b;

    cout<<gcd(a, b)<<"\n"<<a*b/gcd(a, b)<<"\n";
}