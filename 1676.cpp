#include<iostream>

using namespace std;

int cnt;

int main() {
    int n;
    cin>>n;
    for(int i=1 ; i<=n; i++)
    {
        if(i%5 == 0)cnt++;
        if(i%25 == 0)cnt++;
        if(i%125 == 0)cnt++;
    }
    cout<<cnt<<"\n";
}



/*

#include<iostream>

using namespace std;

int cnt = 0;
int check = 1;

int go(int n) {
    if(n%10==0) cnt++;
    else if(n%2==0) {
        int two = n;
        while(two%2==0) {
            check *= 2;
            two/=2;
        }
    }
    else if(n%5==0) {
        int five = n;
        while(five%5==0) {
            check *= 5;
            five/=5;
        }
    }
    if(check%10==0) {
        int ten = check;
        while(ten%10==0) {
            ten /= 10;
            cnt++;
        }
        check = ten;
    }

    if(n<2) return 1;

    return n*go(n-1);
}

int main() {
    int n;

    cin>>n;

    n = go(n);

    cout<< cnt <<"\n";
}
*/