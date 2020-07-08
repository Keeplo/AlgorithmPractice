#include <string>
#include <vector>
#include <iostream>
using namespace std;

// Programmers Skill Check Level 2. (2020.07.08)
// 행렬 곱 2차원 벡터


// arr1.size() * arr1[0].size()     arr2.size() * arr2[0].size()
// 2*3                              3*2

// 1 2 3                            7 8                             1 4     3 3     15 15
// 4 5 6                            9 10                            4 1     3 3     15 15
//                                  11 12


int main() {
    vector<int> temp;
    vector<vector<int>> answer, arr1, arr2;

    arr1 = [[1, 4], [4, 1]];
    arr2 = [[3, 3], [3, 3]];

    for(int i=0; i<arr1.size(); i++) {
        int sum;
        for(int j=0; j<arr2.size(); j++) {
            sum += arr1[i][j]*arr2[j][i];
        }
        temp.push_back(sum);
        sum = 0;
        temp.clear();
    }

    return answer;
}