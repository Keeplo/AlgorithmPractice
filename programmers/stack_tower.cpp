#include <string>
#include <vector>
#include <iostream>

using namespace std;

int main() {
    vector<int> heights, answer, temp;

    int n;
    cin>>n;

    for(int i=0; i<n; i++) {
        int tmp;
        cin>>tmp;
        heights.push_back(tmp);
    }

    for(int i=0; heights.size()>0; i++) {
        temp = heights;
        for(int j=n; temp.size()>0; j--) {
            if(temp.back()>heights.back()) {
                answer.insert(answer.begin(), temp.size());
                break;
            } 
            temp.pop_back();
            if(temp.size()==0) {
                answer.insert(answer.begin(), 0);
            }
        }
        heights.pop_back();
    }

    for(int i=0; i<answer.size(); i++) {
        cout<< answer[i]<< " ";
    }

    return 0;
}q