#include<iostream>

using namespace std;

bool check[1000000];
void go(int a) {
    if(a==0 || a==1 || check[a]==true) return;
    else {
        cout<< a << "\n";
    }
}

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);

    int a, b, temp=0;

    cin>>a;
    cin>>b;

    a > b ? temp=a : temp=b;

    for (int j = 2; j <= temp; j++) {
		for (int k = 2; j*k <= temp; k++) {
			check[j*k] = true;
        }
    }

    for(int i=a; i<=b; i++) {
        go(i);
    }
    
}