#include<iostream>
#include<stack>
#include<string>

using namespace std;

int main() {
    int n;

    cin>>n;
    cin.ignore(128,'\n');

    //* 어떤 데이터형(int or char)과 string형을 연달아 입력받을 때 getline 버퍼에 입력된 줄바꿈 문자를 받아들여 버리는데 이를 막기위해서 사이에 getchar()를 삽입해줄 수 있다.
    //https://leeusin.tistory.com/418
    
    string s[n];

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


