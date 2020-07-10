#include <string>
#include <vector>
#include <queue>

#include <iostream>

using namespace std;

int main() {
    vector<int> priorities;
    int location;

    int answer = 1;

    int n;
    cin>>n;
    
    queue<int> q, temp;

    for(int i=0; i<n; i++) {
        int tmp;
        cin>>tmp;
        priorities.push_back(tmp);
        q.push(tmp);
    }

    cin>>location;

    while(1) {
        int front = q.front();
        temp = q;
        cout<<"front : "<< q.front()<< " / loc : "<<location<< " / answer : "<< answer<< "\n";
        // 큐 복사물로 뒤에 우선순위 높은걸 찾기
        bool check = true;
        while(temp.size()>0) {     
            cout<<"---copy queue check --- temp.front : " << temp.front()<<"\n";
            if(temp.front() > front) {  // 우선순위 높은게 존재
                cout<< "우선순위 높은거 있다!!!!!!!\n";
                q.push(front);
                q.pop();
                location==0 ? location = q.size()-1 : location--;
                cout<<"location : " << location <<"\n";
                check = false;
                break;
            } else {                    // 우선순위 높은게 없음
                temp.pop();
            }
        }

        if(check==true) {
            cout<< "우선순위 업\n";
            // 복사 큐가 끝날때까지 front 보다 우선 순위 높은게 없음(q 변동 없음) front 출력 
            q.pop();

            if(location==0) // 원하던 자료가 출력됨;
                break;
            location--;
            answer++;
        }
    }

    
    //    

    // 1 7 4 5 6 > loca 3            // pop = x // count = 0
    // 7 4 5 6 1 > index 2          // pop = x // count = 0
    // 4 5 6 1   > index 1          // pop = 7 // count = 1
    // 5 6 1 4   > index 0          // pop = x // count = 1

    // 6 1 4 5   > index q.size() 4 // pop = x // count = 1
    
    // 1 4 5     > index 3          // pop = 6 // count = 2
    // 4 5 1     > index 2          // pop = x // count = 2
    
    // 5 1 4     > index 1          // pop = x // count = 3 


    cout<< answer <<"\n";


    return 0;
}