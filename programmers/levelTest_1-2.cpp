#include<iostream>
#include<algorithm>
#include<vector>

using namespace std;

int main() {
    long long answer = 0, n;
    vector<int> tmp;

    cin>>n;

    while(1) {
        if(n/10==0) {
            tmp.push_back(n);
            break;
        } else {
            tmp.push_back(n%10);
            n /= 10;
        }
    }

    sort(tmp.begin(), tmp.end());

    while(1) {
        if(tmp.size()>1) {
            answer *= 10;
            answer += tmp.back();
            tmp.pop_back();
        } else {
            answer *= 10;
            answer += tmp.back();
            tmp.pop_back();
            break;
        }
    }

    return answer;
}