//
//  main.swift
//  ProcessDevelop
//
//  Created by Yongwoo Marco on 2020/09/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

//
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var day=0, count=0
    var p = progresses, s = speeds, answer:[Int] = []
    
    while( (p.count>0) || (count>0) ) {
        if(p.count>0) {
            if(p[0]+s[0]*day>=100) {
                count += 1
                p.remove(at: 0)
                s.remove(at: 0)
                continue
            }
        }
        if(count>0) {
            answer.append(count)
            count = 0
        }
        day += 1
    }

    return answer
}
let progresses = [93, 30, 55]
let speeds = [1, 30, 5]

//let progresses = [95, 90, 99, 99, 80, 99]
//let speeds = [1, 1, 1, 1, 1, 1]

print(solution(progresses, speeds))
