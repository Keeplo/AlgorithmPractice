#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <iostream>

using namespace std;


int main() {
    int d[2], m[2], y[2], fine=0;
    for(int i=0; i<2; i++) {
        cin>>d[i]>>m[i]>>y[i];
    }
    // i==0 제출 날짜
    // i==1 제출 기한 

    if(y[1]==y[0]) {
        if(m[1]==m[0]) {
            if(d[1]==d[0]) {
                // 기간안에 제출
            } else if(d[1]>d[0]) {
                // 며칠 전 제출 == 기한안에 제출
            } else {
                // 며칠 늦음
                fine += abs((d[1]-d[0]))*15;
            }
        } else if(m[1]>m[0]) {
            // 이전 달 제출 == 기한안에 제출
        } else {
            // 몇달 늦음
            fine += abs((m[1]-m[0]))*500;
        }
    } else if(y[1]>y[0]) {
        // 전 년도 제출 == 기한안에 제출
    } else {
        // 몇년 늦음
        fine += 10000;
    }

    cout<<fine<<"\n";

    return 0;
}
