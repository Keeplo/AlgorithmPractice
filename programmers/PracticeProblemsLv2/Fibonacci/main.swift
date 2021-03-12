//
//  main.swift
//  Fibonacci
//
//  Created by Yongwoo Marco on 2020/09/05.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 피보나치 수

// https://programmers.co.kr/learn/courses/30/lessons/12945
// https://keeplo.tistory.com/136

import Foundation

func solution(_ n:Int) -> Int {
    var f = [0, 1]
    for i in 2...n {
        f.append((f[i-1]+f[i-2])%1234567)
    }
    
    return f[n]
}

let n = Int(readLine()!)

print(solution(n!))
