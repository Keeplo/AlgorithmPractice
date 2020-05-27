#include<iostream>
#include<stack>
#include<queue>

using namespace std;

int main() {
    int n;
    stack<int> s;
    queue<int> import;
    queue<string> ans;
    cin>>n;

    for(int i=0; i<n; i++) {
        int tmp;
        cin>>tmp;
        import.push(tmp);
    }

    int i=1;
    while(import.empty()==0) {
        if(s.empty()==1) {
            s.push(i);
            ans.push("+");
            i++;
        } else if(s.top() == import.front()) {
            s.pop();
            import.pop();
            ans.push("-");
        } else if(s.top() != import.front()) {
            if(i<=n) {
                s.push(i);
                ans.push("+");
                i++;
            } else {
                break;
            }
        } 
    }

    if(import.empty()==1) {
        while(ans.empty()==0) {
            cout<<ans.front()<<"\n";
            ans.pop();
        }
    } else {
        cout<<"NO"<<"\n";
    }
    
}