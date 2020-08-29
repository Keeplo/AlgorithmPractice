//
//  main.swift
//  CountingXTerm
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// x만큼 간격이 있는 n개의 숫자

// https://programmers.co.kr/learn/courses/30/lessons/12954

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result = [Int64]()
    for i in 0..<n {
        result.isEmpty ? result.append(Int64(x)) : result.append(result[i-1]+Int64(x))
    }
    return result
}

let arr = readLine()!.components(separatedBy: " ").map{ Int($0) }

print(solution(arr[0]!, arr[1]!))
