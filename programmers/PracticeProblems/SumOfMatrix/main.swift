//
//  main.swift
//  SumOfMatrix
//
//  Created by Yongwoo Marco on 2020/08/29.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 행렬의 덧셈

// https://programmers.co.kr/learn/courses/30/lessons/12950
// https://keeplo.tistory.com/86

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]]()
    
    for i in 0..<arr1.count {
        var middle = [Int]()
        
        for j in 0..<arr1[0].count {
            middle.append(arr1[i][j]+arr2[i][j])
        }
        result.append(middle)
    }
    
    return result
}

let n = Int(readLine()!)
var arr = [[[Int]]]()

for _ in 0..<2 {
    var mid = [[Int]]()
    for _ in 0..<n! {
        let insideArr = readLine()!.components(separatedBy: " ").map({Int($0)!})
        mid.append(insideArr)
    }
    arr.append(mid)
}

print(solution(arr[0],arr[1]))
