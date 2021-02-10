//
//  main.swift
//  NextBiggerNumber
//
//  Created by Yongwoo Marco on 2021/02/09.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 다음 큰 숫자

// https://programmers.co.kr/learn/courses/30/lessons/12911
//

import Foundation

func solution(_ n:Int) -> Int {
    var answer = n+1
    let numberOfOne = String(n, radix: 2).filter({ $0 == "1" }).count

    while answer < 1000000 {
        if String(answer, radix: 2).filter({ $0 == "1" }).count == numberOfOne {
            return answer
        }
        answer += 1
    }

    return -1
}

//func solution(_ n:Int) -> Int {
//    var answer : Int = n + 1
//
//    while true {
//        if n.nonzeroBitCount == answer.nonzeroBitCount {
//            break;
//        }
//        answer += 1
//    }
//    return answer
//}

//let n = 78
let n = 15

print(solution(n))
