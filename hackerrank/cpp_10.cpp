// StringStream

#include <sstream>
#include <vector>
#include <iostream>

using namespace std;

vector<int> parseInts(string str) {
	// Complete this function
    stringstream ss(str);
    vector<int> answer;
    
    int tmp;
    char ch;
    for(int i=0; i<str.size(); i++) {
        if(str[i]==',') {
            ss>>tmp;
            answer.push_back(tmp);
            ss>>ch;
        }
    }
    ss>>tmp;
    answer.push_back(tmp);

    return answer;
}

int main() {
    string str;
    cin >> str;
    
    vector<int> integers = parseInts(str);

    for(int i = 0; i < integers.size(); i++) {
        cout << integers[i] << "\n";
    }
    
    return 0;
}