//에라스토테네스의 체 (소수정리)

#include<iostream>

using namespace std;
bool check[1000000];

void go(int num) {
    for(int a=3; a<num; a+=2) {
        if(check[a]==false && check[num-a]==false) {
            cout<< num << " = " << a << " + " << num-a << "\n";
        return;
        }
    }
    cout<<"Goldbach's conjecture is wrong."<<"\n";
    return;
}

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);

    int a[50000], i=0, c, temp=0;

    do{
        cin>>c;
        if(c%2==0 && c>4) {
            a[i] = c;
            i++;
            if(temp<c) temp=c;
        }
    } while(c>0);

    for (int j = 2; j <= temp; j++) {
		for (int k = 2; j*k <= temp; k++) {
			check[j*k] = true;
        }
    }

    for(int j=0; j<i; j++) {
        go(a[j]);
    }
}


/*
#include<iostream>

using namespace std;
int aws[500000];

int check(int c) {
    if(aws[c/2]==0) {
        for(int i=2; i<c; i++) {
            if(c%i==0) {
                aws[c/2] = -1;
                return -1;
            }
        }
        aws[c/2] = c;
        return c;
    } else if(aws[c/2]==-1) {
        return -1;
    } else {
        return aws[c/2];
    }
}

void go(int num) {
    for(int a=3; a<num; a+=2) {
        if(check(a) > 0 && check(num-a) > 0) {
            cout<< num << " = " << check(a) << " + " << check(num-a) << "\n";
            return;
        }
    }
    cout<<"Goldbach's conjecture is wrong."<<"\n";
    return;
}

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);

    int a[50000], i=0, c;

    do{
        cin>>c;
        if(c%2==0 && c>4) {
            a[i] = c;
            i++;
        }
    } while(c>0);
    for(int j=0; j<i; j++) {
        go(a[j]);
    }
}
*/