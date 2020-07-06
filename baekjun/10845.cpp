#include<iostream>
#include<queue>

using namespace std;
queue<int> q;

void checkCommend(string cmd, int num = 0) {
    if(cmd == "push") {
        q.push(num);
    } else if(cmd == "pop") {
        if(q.empty()) {
            cout<<"-1"<<"\n";  
        } else {
            cout<<q.front()<<"\n";
            q.pop();
        }
    } else if(cmd == "empty") {
        q.empty() ? cout<< "1" <<"\n" : cout<< "0" <<"\n";
    } else if(cmd == "front") {
        q.empty() ? cout<< "-1" << "\n" : cout<<q.front()<<"\n";
    } else if(cmd == "back") {
        q.empty() ? cout<< "-1" << "\n" : cout<<q.back()<<"\n";
    } else if(cmd == "size") {
            cout<<q.size()<<"\n";
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