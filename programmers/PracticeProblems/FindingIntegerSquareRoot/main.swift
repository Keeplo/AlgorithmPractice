//
//  main.swift
//  FindingIntegerSquareRoot
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 정수 제곱근 판별

// https://programmers.co.kr/learn/courses/30/lessons/12934
// https://keeplo.tistory.com/97

import Foundation

func solution(_ n:Int64) -> Int64 {
    return sqrt(Double(n)) == Double(Int(sqrt(Double(n)))) ? Int64(pow(sqrt(Double(n))+1, 2)) : -1
}

let n = Int64(readLine()!)

print(solution(n!))
