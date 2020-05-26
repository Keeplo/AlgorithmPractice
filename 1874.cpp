#include<iostream>
#include<stack>
#include<queue>

using namespace std;
stack<int> s;
queue<int> import;
int n;

void go(int i) {
cout<<"--------"<<i<<"--------\n";
    if(s.empty()) {
        s.push(i);
        cout<<"++"<<"\n";
    } else if(import.front()==s.top()) {
        s.pop();
        import.pop();
        cout<<"-"<<"\n";
        return go(i);
    } else {
        s.push(i);
        cout<<"+"<<"\n";
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

    if(s.empty() && import.empty()) {
        cout<<"NOOOOOOO"<<"\n";
    } else {
        cout<<"NO"<<"\n";
    }
    
}