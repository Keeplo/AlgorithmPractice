#include<iostream>
#include<deque>

using namespace std;
deque<int> d;

void checkCommend(string cmd, int num = 0) {
    if(cmd == "push_front") {
        d.push_front(num);
    } else if(cmd == "push_back") {
        d.push_back(num);
    } else if(cmd == "pop_front") {
        if(d.empty()) {
            cout<<"-1"<<"\n";  
        } else {
            cout<<d.front()<<"\n";
            d.pop_front();
        }
    } else if(cmd == "pop_back") {
        if(d.empty()) {
            cout<<"-1"<<"\n";  
        } else {
            cout<<d.back()<<"\n";
            d.pop_back();
        }
    }else if(cmd == "empty") {
        d.empty() ? cout<< "1" <<"\n" : cout<< "0" <<"\n";
    } else if(cmd == "front") {
        d.empty() ? cout<< "-1" << "\n" : cout<<d.front()<<"\n";
    } else if(cmd == "back") {
        d.empty() ? cout<< "-1" << "\n" : cout<<d.back()<<"\n";
    } else if(cmd == "size") {
            cout<<d.size()<<"\n";
    }
}

int main() {
    int n;
    int num;
    cin>>n;

    string cmd;
    for(int i=0; i<n; i++) {
        cin>>cmd;
        if(cmd == "push_front" || cmd=="push_back") {
            cin>>num;
            checkCommend(cmd, num);
        } else {
            checkCommend(cmd);
        }
    }
    
}
// 1/1 제출 성공 