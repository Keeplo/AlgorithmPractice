#include<iostream>
#include<stack>
#include<queue>

using namespace std;

int main() {
    int n;
    queue<int> q;
    
    cin>>n;

    string s[n];
    for(int i=0; i<n; i++) {
        string tmp;
        cin>>tmp;
        s[i] = tmp;
        stack<int> t;
        int check = 0;
        for(int j=0; j<s[i].size(); j++) { 
            string ss;
            ss = s[i][j];
            if(ss=="(") {
                t.push(1);
            } else if(ss==")")  {
                if(t.size()==0) {
                    q.push(0);
                    check = 1;
                    break;
                }
                t.pop();
            } 
        }
        if(t.size()==0) {
            if(check==0) {
                q.push(1);
            }
        }
        else {
            q.push(0);
        }
    }

    for(int x=0; q.size() != 0; x++) {
        if(q.front() == 1) {
            cout<<"YES"<<"\n";
            q.pop();
        } else {
            cout<<"NO"<<"\n";
            q.pop();
        }
    }
}