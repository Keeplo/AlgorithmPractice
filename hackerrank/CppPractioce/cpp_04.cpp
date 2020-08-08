// C++ Practice : Conditional Statements

#include <iostream>

using namespace std;

struct Alpha {
    string s[9]; 
};

int main()
{
    int n;
    struct Alpha a = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
    string ans;

    cin >> n;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    if(n < 1) {
        cout<<"Smaller than "<<n<<"\n";
    } else if(n==1) {
        ans = a.s[0];
    } else if(n==2) {
        ans = a.s[1];
    } else if(n==3) {
        ans = a.s[2];
    } else if(n==4) {
        ans = a.s[3];
    } else if(n==5) {
        ans = a.s[4];
    } else if(n==6) {
        ans = a.s[5];
    } else if(n==7) {
        ans = a.s[6];
    } else if(n==8) {
        ans = a.s[7];
    } else if(n==9) {
        ans = a.s[8];
    } else {
        cout<<"Greater than 9\n";
    }

    cout<<ans<<"\n";
    return 0;
}
