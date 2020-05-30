#include<iostream>
#include<cmath>

using namespace std;

int main() {
    string s;

    cin>> s;

    int n = s.size();

    cout<<"s.size() : "<< n<<"\n";
    
    if (n%3 == 1) {
        cout<<"11111111"<<"\n";
        cout << s[0];
    } else if (n%3 == 2) {
        cout<<"22222222"<<"\n";
        cout<<"s[0] : "<<s[0]<< " / s[0] - '0' : " << s[0]-'0' << " / s[1] : " <<s[1]<<"\n"; 
        cout << (s[0])*2 + (s[1]);
    }

    cout<<"\n"<<"\n";

    for (int i=n%3; i<n; i+=3)
        cout << (s[i]-'0')*4 + (s[i+1]-'0')*2 + (s[i+2]-'0');

    cout << '\n';
    
}