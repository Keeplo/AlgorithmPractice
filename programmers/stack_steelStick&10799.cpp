// 프로그래머스 코딩테스트 연습 - 스택/큐 - 쇠막대기
// 백준 No. 10799 - 쇠막대기

#include <string>
#include <iostream>
#include <vector>

using namespace std;


int main() {
    vector<int> pieces;

    string arrangement;
    cin>>arrangement;

    int answer=0;

    for(int i=0; i<arrangement.size(); i++) {
        if(arrangement[i]=='(') {
            pieces.push_back(arrangement[i]);
        } else {
            pieces.pop_back();
            if(arrangement[i-1]=='(') {
                answer += pieces.size();
            } else { 
                answer++;
            }
        }
    }
    cout<<answer<<"\n";
}
