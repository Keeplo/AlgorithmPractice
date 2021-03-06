//
//  main.swift
//  DiviserSum
//
//  Created by Yongwoo Marco on 2020/08/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 약수의 합
// https://programmers.co.kr/learn/courses/30/lessons/12928
// https://keeplo.tistory.com/102?category=947131

import Foundation

/*
func solution(_ n:Int) -> Int {
    var result = 0
        
    if(n==0) {
        return 0
    }
    for i in 1...n {
        if(n%i==0) {
            result += i
        }
    }
    return result
}
 */
func solution(_ n:Int) -> Int {
    return n==0 ? 0 : (1...n).reduce(0, { n%$1==0 ? $0+$1 : $0 })
}

let n = Int(readLine()!)
print(solution(n!))
