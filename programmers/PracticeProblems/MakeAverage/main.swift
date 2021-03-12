//
//  main.swift
//  MakeAverage
//
//  Created by Yongwoo Marco on 2020/08/16.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 평균 구하기

// https://programmers.co.kr/learn/courses/30/lessons/12944
// https://keeplo.tistory.com/92

import Foundation

func solution(_ arr:[Int]) -> Double {
    var result: Double = 0
    
    for i in arr {
        result += Double(i)
    }
    
    result /= Double(arr.count)
    return result
}

let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

print(solution(arr))
