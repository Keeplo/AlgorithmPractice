//
//  main.swift
//  21.01.05 Lv2-1
//
//  Created by Yongwoo Marco on 2021/01/05.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
var result: [[Int]] = []
var temp = 0
  
for index in 0..<arr1.count {
    result.append([])
    for i in 0..<arr2[0].count {
        temp = 0
        for j in 0..<arr2.count {
            temp += arr1[index][j] * arr2[j][i]
        }
        result[index].append(temp)
    }
}
    
return result    
}


let arr1 = [[1, 4],
            [3, 2],
            [4, 1]]
let arr2 = [[3, 3],
            [3, 3]]

print(solution(arr1, arr2))

//행렬 arr1, arr2의 행과 열의 길이는 2 이상 100 이하입니다.
//행렬 arr1, arr2의 원소는 -10 이상 20 이하인 자연수입니다.
