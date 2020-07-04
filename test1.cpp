/*#include<iostream>
#include<vector>
#include<string>
#include<algorithm>

using namespace std;

int main() {
    vector<int> listA, listB, sum, complement, intersect, tmp;

    listA.push_back(2);
    listA.push_back(3);
    listA.push_back(4);
    listA.push_back(5);

    listB.push_back(1);
    listB.push_back(6);
    listB.push_back(7);

    //합집합
    sum.resize(listA.size()+listB.size());//공간확보
    auto itr = set_union(listA.begin(),listA.end(),listB.begin(),listB.end(), sum.begin());//합집합
    sum.erase(itr, sum.end());//남은공간 제거

    cout<<"sum :";
    for(int i=0; i<sum.size(); i++) {
        cout<< " "<<sum[i];
    }
    
    //교집합 
    intersect.resize(listA.size()+listB.size());//공간확보
    itr = set_intersection(listA.begin(),listA.end(),listB.begin(),listB.end(),intersect.begin());//교집합
    intersect.erase(itr,intersect.end());//남은공간 제거

    cout<<"\nintersect :";
    for(int i=0; i<intersect.size(); i++) {
        cout<< " "<<intersect[i];
    }

    //차집합
    complement.resize(listA.size()+listB.size());//공간확보
    itr = set_difference(listA.begin(),listA.end(),listB.begin(),listB.end(),complement.begin());//차집합
    complement.erase(itr,complement.end());//남은공간 제거

    cout<<"\ncomplement :";
    for(int i=0; i<complement.size(); i++) {
        cout<< " "<<complement[i];
    }

    cout<<"\nA :";
    for(int i=0; i<listA.size(); i++) {
        cout<< " "<<listA[i];
    }

    cout<<"\nB :";
    for(int i=0; i<listB.size(); i++) {
        cout<< " "<<listB[i];
    }
    

    cout<< "A size : "<< listA.size()<< " / b size : " <<listB.size()<<"\n";
}*/

#include <string>
#include <vector>
#include <algorithm>

using namespace std;

vector<int> solution(vector<int> arrayA, vector<int> arrayB) {
    vector<int> answer, listA, listB, sum, complemet, intersect;

    listA = arrayA;
    listB = arrayB;

    // 벡터 정렬
    sort(listA.begin(), listA.end());
    sort(listB.begin(), listB.end());
    // 중복 제거
    listA.erase(unique(listA.begin(), listA.end()), listA.end());
    listB.erase(unique(listB.begin(), listB.end()), listB.end());

    //합집합
    sum.resize(listA.size()+listB.size()); 
    auto tmp = set_union(listA.begin(), listA.end(), listB.begin(), listB.end(), sum.begin()); 
    sum.erase(tmp, sum.end());

    //차집합
    complemet.resize(listA.size()+listB.size()); 
    tmp = set_difference(listA.begin(), listA.end(), listB.begin(), listB.end(), complemet.begin()); 
    complemet.erase(tmp, complemet.end());

    //교집합
    intersect.resize(listA.size()+listB.size()); 
    tmp = set_intersection(listA.begin(), listA.end(), listB.begin(), listB.end(), intersect.begin()); 
    intersect.erase(tmp, intersect.end());

    // A로 생성한 Set 원소개수
    answer.push_back(listA.size());
    // B로 생성된 Set 원소개수
    answer.push_back(listB.size());
    // sum() 결과 집합 원소개수
    answer.push_back(sum.size());
    // complement() 결과 집합 원소개수
    answer.push_back(complemet.size());
    // intersect() 결과 집합 원소개수
    answer.push_back(intersect.size());

    return answer;
}