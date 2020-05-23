#include<iostream>
#include<cstdlib>
#include<algorithm>

using namespace std;

int go(int a[]) {

}

int sum(int a, int b) {
    return abs(a-b)
}

int main() {
    ios_base::sync_with_stdio(false); 
    cin.tie(NULL);

    int n, a[8], max;
    while(1) {
        cin>>n;
        if(n>2 && n<9) break;
    }
    for(int i=0; i<n; i++) {
        cin<<a[i];
    }
    
}

void Permutation(int &a, int Start, int End)
{
    if (Start == End)
    {
        for (const auto it : Array)
        {
            cout << it << " ";
        }
        cout << endl;


    }
    else
    {
        for (int i = Start; i <= End; ++i)
        {
            swap(a[Start], a[i]);
            Permutation(a, Start + 1, End);
            swap(a[Start], a[i]);
        }
    }
}