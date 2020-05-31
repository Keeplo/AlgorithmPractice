#include<iostream>
#include<stack>

using namespace std;
stack<string> s;

void go(int n) {
    int c = 0;
    while(1) {
        if(n/2 == 1) { 
            if(n%2 == 0) {
                cout<<"push! - 0\n";
                s.push("0");
                n /= 2;
            }
            else {
                s.push("1");
                cout<<"push! - 1\n";
                n /= 2;
            }
        }
        else { // 1 0
            cout<<"push! - 1\n";
            s.push("1"); 
            cout<<"Finish go\n";
            break;
        }
    }
}

int main() {
    int inp;

    cin>>inp;

    while(1) {
        if(inp==0) break;
        if(inp%10 > 0) {
            cout<<"go! - inp : "<<inp<<"\n";
            go(inp%10);
        }
        else {
            cout<<"push! - 000\n";
            s.push("000");
        }
        inp /= 10;
    }
    
    cout<<s.top()<<"\n"

    for(int i=0; i<s.size(); i++) {
        cout<<s.top();
        s.pop();
    }
}