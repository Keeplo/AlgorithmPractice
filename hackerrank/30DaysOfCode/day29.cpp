//#include <bits/stdc++.h>
#include <iostream>
#include <vector>

using namespace std;

vector<string> split_string(string);

int main()
{
    int t;
    cin >> t;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    vector<int> result;
    for (int t_itr = 0; t_itr < t; t_itr++) {
        string nk_temp;
        getline(cin, nk_temp);

        vector<string> nk = split_string(nk_temp);

        int n = stoi(nk[0]);
        int k = stoi(nk[1]);
        int max = 0;
        for(int i=1; i<=n; i++) {
            for(int j=i+1; j<=n; j++) {
                cout<<"A = "<<i<<", B = "<<j<<"; A&B = "<<(i&j)<<" / max : "<<max << "\n";
                if( (i&j) < k ) {
                    if( max < (i&j) ) max = (i&j);
                }
            }
        }
        result.push_back(max);
    }

    for(int i=0; i<result.size(); i++) {
        cout<<result[i]<<"\n";
    }

    return 0;
}

vector<string> split_string(string input_string) {
    string::iterator new_end = unique(input_string.begin(), input_string.end(), [] (const char &x, const char &y) {
        return x == y and x == ' ';
    });

    input_string.erase(new_end, input_string.end());

    while (input_string[input_string.length() - 1] == ' ') {
        input_string.pop_back();
    }

    vector<string> splits;
    char delimiter = ' ';

    size_t i = 0;
    size_t pos = input_string.find(delimiter);

    while (pos != string::npos) {
        splits.push_back(input_string.substr(i, pos - i));

        i = pos + 1;
        pos = input_string.find(delimiter, i);
    }

    splits.push_back(input_string.substr(i, min(pos, input_string.length()) - i + 1));

    return splits;
}