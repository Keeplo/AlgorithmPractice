#include<iostream>
#include<stack>
#include<queue>

using namespace std;
stack<int> s;
queue<int> import;
int n;

void go(int i) {
cout<<"--------"<<i<<"--------\n";

    if(s.empty()==1) {
        s.push(i);
        cout<<"+"<<"\n";
        return;
    } else if(import.front()==s.top()) {
        s.pop();
        import.pop();
        cout<<"-"<<"\n";
        return go(i);
    } else {
        s.push(i);
        cout<<"+"<<"\n";
        return;
    } 

    if(i==n && s.empty()==0 && import.empty()==0) {
        cout<<"+++++++++++++"<<"\n";
        if(import.front()==s.top()) {
            return go(i);
        } else {
            cout<<"NO"<<"\n";
            return;
        }
    }

}

int main() {
    cin>>n;

    for(int i=0; i<n; i++) {
        int tmp;
        cin>>tmp;
        import.push(tmp);
    }

    for(int i=1; i<=n; i++) {
        go(i);
    }
}