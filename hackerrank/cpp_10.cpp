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

    ss>>tmp;
    answer.push_back(tmp);
    cout<<"ss : " << ss.str() << " / ss.tellp : " <<<ss.tellp()<< " / tmp : "<<tmp<<"\n";

int count = 0;
    while(1) {
        if(ss.str().find(",") != string::npos) {
            ss>>ch;
            ss>>tmp;
            answer.push_back(tmp);
            cout<<"ss : " << ss.str() << " / tmp : "<<tmp<<"\n";
            if(count==3) break;
            //if(ss.seekg.cur() == ss.seekg.end()) break;
        } else {
            cout<<"break while\n";
            break;
        }
        count++;
    }

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