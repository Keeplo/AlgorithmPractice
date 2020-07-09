#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

//Print the  integers of the array in the reverse order in a single line separated by a space.

int main() {
    int n;

    cin>>n;

    vector<int> arr;

    for(int i=0; i<n; i++) {
        int tmp;
        cin>>tmp;
        arr.push_back(tmp);
    }

    reverse(arr.begin(), arr.end());

    for(int i=0; i<arr.size(); i++) {
        cout<<arr[i]<<" ";
    }
    return 0;
}