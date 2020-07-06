#include<iostream>
#include<queue>

using namespace std;

int check[101];
queue<int> result;

int solution(int *arr[]) {
    int max;

    for(int i=0; i<arr.max_size() ; i++) {
        check[arr[i]]++;
        if(max<arr[i]) max = arr[i];
    }
    for(int i=1; i<=max; i++) {
        if(check[i]>2) result.push(check[i]);
    }
    if(result.empty()==0) return -1;
    else return 1;
}

int main() {
    int a[] = {1, 2, 3, 3, 3, 3, 4, 4};

    if(solution(&a)==-1) cout<<"-1"<<"\n";
    else {
        cout<<"[";
        for(int i=0; i<result.size(); i++) {
            cout<<result.front();
            if(i==result.size()-1) cout<<"]\n";
            else cout<<", ";
            result.pop();
        }
    }
}