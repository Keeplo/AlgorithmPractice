#include <string>
#include <vector>

using namespace std;

bool solution(vector<string> name_list) {
    bool answer = true;

    vector<string> nameList = name_list;

    // 기준문자 [a, b, c] -> "a"
    for(int i = 0; i<nameList.size(); i++) { 
        // 비교문자 [a, b, c] -> "b" or "c"
        for(int j = 0; j<nameList.size(); j++) {
            if(j==i) {
                continue;
            } else {
                // 비교문자에서 기준문자가 부분 또는 전체 같을 경우 리턴값 발생 
                // 발생한 리턴값은 쓰레기 값 string::npos와 달라지므로 if문 시작
                if(nameList[j].find(nameList[i]) != string::npos) {
                    return answer;
                }
            }
        }
    }
    // 전체 탐색 동안 중복 값 없음 -> false 
    answer = false;
    return answer;
}