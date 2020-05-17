#include<iostream>
#include<algorithm>

using namespace std;

void go(string str) {
 cout<< str<<"\n";
    /*
cout<<str<<"\n";
    if(str.length() == 0) 
        cout<<"2"<<"\n"; return ;

    string temp;
   
    temp = str;
    cout<<"3"<<"\n";
    reverse(temp.begin(), temp.end());
    cout<<"4"<<"\n";
    cout<< temp << " ";
cout<<"5"<<"\n";
    str.erase(temp.begin(), temp.end());
    cout<<"6"<<"\n";
    go(str);
    cout<<"7"<<"\n";
    */
}


int main() {
    int n;

    cin>>n;

    string state[n];

    for(int i=0; i<n; i++) {
        cin>>state[n];
        go(state[i]);
        cout<<"\n";
    }
}
/*

int main() {
    string str;

    cin>>str;

    str.erase(0,3);

    cout<< str << "\n";

    str.erase(0, 2);
    if( str.length() == 0)
        cout<< "A" << "\n";
    else 
        cout<< "C" << "\n";
}
*/


