 #include <bits/stdc++.h>

using namespace std;



int main()
{
    int N;
    cin >> N;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');


    if(N%2==0) {                // even
        if(N>20) {              // > 20
            cout<<"Not Weird\n";
        } else {                // <= 20
            if(N>=2 && N<=5) {  // 2<= N <=5
                cout<<"Not Weird\n";
            } else {            // 6<= N <=20
                cout<<"Weird\n";
            }
        }

    } else {                    // odd
        cout<<"Weird\n";
    }

    return 0;
}
