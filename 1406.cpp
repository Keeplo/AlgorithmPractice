#include<iostream>
#include<string>
#include<list>

using namespace std;

int main() {
    string s;
    int n, cursor;

    cin>>s;

    list<char> editor(s.begin(), s.end());
    cursor = s.size();

    cin>>n;

    while(n--) {
        string cmd;

        cin>>cmd;

        if(cmd=="L") {
            if(cursor>0) cursor--;
        } else if(cmd=="D") {
            if(cursor<editor.size()) cursor++;
        } else if(cmd=="B") {
            if(cursor>0) {
                editor.erase(cursor-1);
                cursor--;
            }
        } else if(cmd=="P") {
            string insert;
            cin>>insert;

            if(cursor<editor.size()) {
                editor.insert(cursor-1, insert);
                cursor++;
            } else {
                editor.push_back(insert);
                cursor++;
            }
        }
    }

    cout<<s<<"\n";
}