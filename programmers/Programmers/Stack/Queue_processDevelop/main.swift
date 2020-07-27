//
//  main.swift
//  Stack/Queue_processDevelop
//
//  Created by Yongwoo Marco on 2020/07/27.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

let priorities = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let location = readLine()!.components(separatedBy: " ").map{ Int($0)! }

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var day=0, count=0
    var p = progresses, s = speeds, answer:[Int] = []
    
    while(p.count>0) {
        if(p[0]+s[0]*day>100) {
            count += 1
            p.remove(at: 0)
            s.remove(at: 0)
            continue
        }
        if(count>0) {
            answer.append(count)
            count = 0
        }
        day += 1
    }
    for data in answer {
        print(data)
    }
    return answer
}

/* 프로그래머스 송치원님 풀이
 import Foundation

 func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
     return zip(progresses, speeds)
         .map { (100 - $0) / $1 }
         .reduce(([], 0)) { (tuple, day) -> ([Int], Int) in
             let (list, lastMax) = tuple
             guard let lastCount = list.last else {
                 return ([1], day)
             }
             if lastMax >= day {
                 return (list.dropLast() + [lastCount + 1], lastMax)
             }
             return (list + [1], day)
         }.0
 }
 */
