#include<iostream>
#include<stack>

using namespace std;
stack<string> s;

int main() {
    int inp;

    cin>>inp;

    while(1) {
        if(inp==0) break;
        if(inp%10 > 0) {
            for(int i=0; i<3; i++) {
                if(n%2==0) {
                    s.push("0");
                    n /= 2;
                } else {
                    s.push("1");
                    n /= 2;
                }
            }
        }
        else {
            s.push("000");
        }
        inp /= 10;
    }
    
    int max = s.size();
    for(int i=0; i<max; i++) {
        if(s.top() == "0" && i<2) {}
        else cout<<s.top();
        s.pop();
    }
}