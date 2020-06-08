#include<iostream>
#include<stack>
#include<string>

using namespace std;

int main() {
    int n;

    cin>>n;

    string s[n];

    cout<<"----"<<n<<"----\n";

    for(int i=0; i<n; i++) {
        
        getline(cin, s[i]);

        stack<string> stk;
        if(i == 0) continue;
        else {
            for(int j=0; j<s[i].size(); j++) {
            string tmp;
            tmp = s[i][j];
            if(tmp==" ") {
                for(int k=0; stk.size() != 0; k++) {
                    if(stk.size()==0) cout<<"error!!!!!\n";
                    else {
                        cout<<stk.top();
                        stk.pop();
                    }
                }
                cout<<" ";
            } else {
                stk.push(tmp);
            }
            }
            for(int k=0; stk.size() != 0; k++) {
                        if(stk.size()==0) cout<<"error!!!!!\n";
                        else {
                            cout<<stk.top();
                            stk.pop();
                        }
            }
        }
    }
}


