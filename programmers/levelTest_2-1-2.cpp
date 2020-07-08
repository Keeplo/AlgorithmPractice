#include <string>
#include <vector>
#include <iostream>
using namespace std;

// Programmers Skill Check Level 2. (2020.07.08)
// 행렬 곱 2차원 벡터


// arr1.size() * arr1[0].size()     arr2.size() * arr2[0].size()
// 2*3                              3*2

// 1 2 3                            7 8                             1 4     3 3     15 15           58  64
// 4 5 6                            9 10                            4 1     3 3     15 15           139 154
//                                  11 12


int main() {
    vector<int> temp;
    vector<vector<int>> answer, arr1, arr2;

    arr1 = {{1, 2, 3}, 
            {4, 5, 6}};

    arr2 = {{7, 8}, 
            {9, 10}, 
            {11, 12}};

    for(int i=0; i<arr1.size(); i++) {
        int sum= 0;
        for(int j=0; j<arr2[0].size(); j++) {
            for(int k=0; k<arr2.size(); k++) {
                sum += arr1[i][k]*arr2[k][j];
            }
            temp.push_back(sum);
            sum = 0;
        }
        answer.push_back(temp);
        temp.clear();
    }

    cout<< "answer : { ";
    for(int a=0; a<answer.size(); a++) {
        cout<< "{ ";
        for(int b=0; b<answer[a].size(); b++) {
            cout<< answer[a][b] << " ";
        }
        cout<<"} ";
    } 
    cout<< " } ";

    return 0;
}