#include<iostream>
#include<string>

using namespace std;
string s;
int cur;

void go(char c, char a = '\0') {
    if(c=="P") { 
        if(cur==0) return;
        // 왼쪽 문자 - 
    } else {
        if(c=="L") {
            if(cur==0) return;
            else cur--;
        } else if(c=="B") {

            // 오른쪽 문자 - 
        } else if(c=="D") {

        } else cout<<"------------error---------------"<<"\n";
    }
}

int main() {

    cin>>s;

    cur = s.size();
    
    int n;

    cin>>n;

    for(int i=0; i<n; i++) {
        char commend, add;
        cin>>commend;
        if(c=="P") { 
            cin>>add;
            go(commend, add);
        } else go(commend);
    }

    cout<<s<<"\n";
}