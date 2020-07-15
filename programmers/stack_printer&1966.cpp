// 프로그래머스 코딩테스트연습 스택/큐 - 프린터
// 백준 No.1966 - 프린터 큐

#include <string>
#include <vector>
#include <queue>

#include <iostream>

using namespace std;

int main() {
    int total;
    cin>>total;

    for(int i=0; i<total; i++) {
        vector<int> priorities;
        int n, location, answer = 1;

        cin>>n;
        cin>>location;
        
        queue<int> q, temp;

        for(int i=0; i<n; i++) {
            int tmp;
            cin>>tmp;
            priorities.push_back(tmp);
            q.push(tmp);
        }


        while(1) {
            int front = q.front();
            temp = q;
            // 큐 복사물로 뒤에 우선순위 높은걸 찾기
            bool check = true;
            while(temp.size()>0) {     
                if(temp.front() > front) {  // 우선순위 높은게 존재
                    q.push(front);
                    q.pop();
                    location==0 ? location = q.size()-1 : location--;
                    check = false;
                    break;
                } else {                    // 우선순위 높은게 없음
                    temp.pop();
                }
            }

            if(check==true) {
                // 복사 큐가 끝날때까지 front 보다 우선 순위 높은게 없음(q 변동 없음) front 출력 
                q.pop();

                if(location==0) // 원하던 자료가 출력됨;
                    break;
                location--;
                answer++;
            }
        }

        cout<< answer <<"\n";
    }
    return 0;
}