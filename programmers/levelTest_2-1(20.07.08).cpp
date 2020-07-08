#include <iostream>
#include <string>
using namespace std;

// Programmers Skill Check Level 2. (2020.07.08)
// 같은 두 문자 나오면 삭제
// baabaa -> bbaa -> aa -> answer == '1' 
// cdcd ->  answer == '0'

int main() {
    int answer = 0;
    string s, tmp;

    cin>> s;

    while(1) {

        string whileLoopStop = s;
        for(int i=0; i<s.size(); i++) {

            if(i==0) tmp = s[i];
            else {
                if(tmp[0] ==s[i]) {
                    if(i>1) {
                        s = s.substr(0, i-1) + s.substr(i+1);
                    } else {
                        s = s.substr(i+1);
                    }
                    break;
                }
                tmp = s[i];
            }
        }
        if(s.size()==0) {
            answer = 1;
            break;
        }

        // 더이상 빼기 안되는경우
        if(whileLoopStop==s) break;
    }

    cout<< answer<<"\n";
    return answer;
}