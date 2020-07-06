#include<iostream>
#include<stack>

using namespace std;
stack<int> s;

void checkCommend(string cmd, int num = 0) {
    if(cmd == "push") {
        s.push(num);
    } else if(cmd == "pop") {
        if(s.empty()) {
            cout<<"-1"<<"\n";  
        } else {
            cout<<s.top()<<"\n";
            s.pop();
        }
    } else if(cmd == "empty") {
        s.empty() ? cout<< "1" <<"\n" : cout<< "0" <<"\n";
    } else if(cmd == "top") {
        s.empty() ? cout<< "-1" << "\n" : cout<<s.top()<<"\n";
    } else if(cmd == "size") {
            cout<<s.size()<<"\n";
    }
}

int main() {
    int n;
    int num;
    cin>>n;

    string cmd;
    for(int i=0; i<n; i++) {
        cin>>cmd;
        if(cmd == "push") {
            cin>>num;
            checkCommend(cmd, num);
        } else {
            checkCommend(cmd);
        }
    }
    
}
// 1/1 제출 성공 