#include<iostream>
#include<string>

using namespace std;
string s;
int cur;

void go(char c, char a = '\0') {
    cout<<"commend : "<< c <<"\n";
    cout<<"cursor : "<< cur <<"\n";
    if(c=="P") {            // 왼쪽 문자 - 
        if(cur==0)  { 
            return;
        } else if() {
            
        } else {
            cout<<"before : "<<s<<"\n";
            string temp;
            temp = s;
            temp.resize(cur-2);
            s = temp + s.substr(cur-1);;
            cout<<"after : "<<s<<"\n";
        }
    } else {
        if(c=="L") {        // 커서 왼쪽으로 한칸
            if(cur==0) return;
            else cur--;
        } else if(c=="B") { // 오른쪽 문자 - 
            if(cur==s.size()+2) return;
            else {

            }
        } else if(c=="D") { // 커서 오른쪽으로 한칸
            if(cur==s.size()+2) return;
            else cur++;
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