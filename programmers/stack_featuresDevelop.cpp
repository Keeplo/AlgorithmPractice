#include <string>
#include <vector>
#include <iostream>

using namespace std;

int main() {
    vector<int> progresses, speeds, answer;
    int n, day=0, count=0;

    cin>>n;

    for(int j=0; j<2; j++) {
        for(int i=0; i<n; i++) {
            int tmp;
            cin>>tmp;
            j==0 ? progresses.push_back(tmp) : speeds.push_back(tmp);
        }
    }
    
    while(!progresses.empty()) { // 과정모두 나가면 종료
        if(progresses.front()+speeds.front()*day>=100) { // front 과정 + 실행률% * 날 수 >= 100%         
            // front 과정 빼낸다
            progresses.erase(progresses.begin(), progresses.begin()+1);
            speeds.erase(speeds.begin(), speeds.begin()+1);
            // 현재 Day에 나온 과정 1개 추가
            count++;
            // 
            if(progresses.empty()&&count!=0) answer.push_back(count);
            // Day 유지 두번째 과정을 다시 front로 보고 위 과정 확인
            continue;
        }
        
        // front 과정이 100%가 안되므로 전과정 배포일 +1일
        if(count!=0) answer.push_back(count);   // front 과정과 함께 나오는 과정 총갯수
        count = 0;
        day++;
    }

    for(int i=0; i<answer.size(); i++) {
        cout<<answer[i]<<", ";
    }

    return 0;
}