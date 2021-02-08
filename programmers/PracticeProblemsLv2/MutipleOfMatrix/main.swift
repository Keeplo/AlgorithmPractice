//
//  main.swift
//  MutipleOfMatrix
//
//  Created by Yongwoo Marco on 2020/09/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 행렬의 곱셈

// https://programmers.co.kr/learn/courses/30/lessons/12949
// https://keeplo.tistory.com/127?category=947131

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return arr1.map({ (a1: [Int]) -> [Int] in
        var tempArr = [Int]()
        
        for i in 0..<arr2[0].count {
            var index = -1
            tempArr.append(arr2.reduce(0, { (before: Int, present: [Int]) -> Int in
                index += 1
                return before + (a1[index]*present[i])
                })
            )
        }
        return tempArr
    })
}

let arr1 = [[1, 4],
            [3, 2],
            [4, 1]]

let arr2 = [[3, 3],
            [3, 3]]

print(solution(arr1, arr2))
    
