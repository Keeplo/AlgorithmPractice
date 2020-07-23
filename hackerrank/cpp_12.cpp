#include <iostream>
#include <string>
using namespace std;

int main() {
	string a, b;
    string tmp1, tmp2;

    getline(cin, a);
    getline(cin, b);

    cout<<a.size()<<" "<<b.size()<<"\n";
    cout<<a+b<<"\n";

    tmp1 = a[0];
    tmp2 = b[0];

    a.replace(0, 1, tmp2);
    b.replace(0, 1, tmp1);

    cout<<a<<" "<<b<<"\n";

    return 0;
}