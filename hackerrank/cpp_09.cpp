#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

//For each pair of  and  values (i.e., for each query), 
//print a single integer denoting the element located at index  
//of the array referenced by . There should be a total of  lines of output.

int main() {
    int n, q;

    cin>>n>>q;

    vector<int> arr[n];

    for(int i=0; i<n; i++) {
        int tmp;
        cin>>tmp;
        for(int j=0; j<tmp; j++) {
            int num;
            cin>>num;
            arr[i].push_back(num);
        }
    }

    for(int i=0; i<q; i++) {
        int x, y;
        cin>>x>>y;
        cout<< arr[x][y]<<"\n";
    }

    
    return 0;
}