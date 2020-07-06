#include <iostream>
#include <vector>
using namespace std;

void solution(vector<vector<int>> v) {
    vector<int> ans;
    ans.push_back(0);
    ans.push_back(0);
    
    for(int i=0; i<v.size(); i++) {
        ans[0] ^= v[i][0];
        ans[1] ^= v[i][1];
    }

    cout<< ans[0] << " "<<ans[1]<<"\n";
}

int main() {
    int n;
    vector<vector<int>> vvv;
    vector<int> vv;
    for(int i=1; i<=6; i++) {
        cin>>n;
        if(i%2==1) {
            vv.push_back(n);
        } else {
            vv.push_back(n);
            vvv.push_back(vv);
            vv.clear();
        }
    }

    solution(vvv);
}