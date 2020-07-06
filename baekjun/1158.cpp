#include<iostream>
#include<vector>
#include<queue>

using namespace std;
 
int main() {
    int n, k;
    vector<int> v;
    queue<int> ans;
    cin>>n;
    cin>>k;
    v.push_back(0); // index 0 삭제
    for(int i=1; i<=n; i++) {
        v.push_back(i);
    }

    int index=1, counter=1, limit = 0;
    while(1) {
        //cout<<"index : "<< index<<" / counter : "<<counter<< " / limit : " << limit << " / v[index] : "<<v[index]<<"\n";
        if(limit < n) {
            if(v[index]==0) {
                counter--;
                //cout<<"0000000000 이요"<<"\n";
            } else {
                if(counter == k) {
                    ans.push(v[index]);
                    //cout<<"----------push : "<<v[index]<<" ----------\n";
                    v[index] = 0;
                    limit++;
                    counter = 0;
                } 
            }

            index++;
            while(index>n) {
                index -= n;
                if(index==0) index = 1;
            }
            counter++;
            if(counter>k) counter = 0;

        } else {
            break;
        }
    }
    
    cout<<"<";
    for(int i=0; i<n; i++) {
        cout<<ans.front();
        ans.pop();
        if(i<n-1) cout<<", ";
    }
    cout<<">\n";
}