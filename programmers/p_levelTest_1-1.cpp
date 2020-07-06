#include<iostream>

using namespace std;

int main() {
    int answer = 0;
    long long copyNum;

    cin>>copyNum;
    
    //copyNum = num;
    while(1) {
        cout<<"num : "<< copyNum<< " / answer : "<<answer<<"\n";
        if(copyNum==1) {
            break;
        }else if(copyNum%2==0) {
            copyNum /= 2;
        } else {
            copyNum = copyNum*3 + 1;
        }
        answer++;
        if(answer == 500) {
            answer = -1;
            break;
        }

    }
    cout<< answer<<"\n";
    return answer;
}