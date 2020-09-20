//
//  main.swift
//  MutipleOfMatrix
//
//  Created by Yongwoo Marco on 2020/09/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var result = [[Int]]()
    
    for i in arr1 {
        var tempArr = [Int]()
        for j in 0..<arr2[0].count {
            var tempNum = 0
            
            for k in 0..<arr2.count {
                tempNum += i[k]*arr2[k][j]
            }
            tempArr.append(tempNum)
        }
        result.append(tempArr)
    }
    
    return result
}

let arr1 = [[1, 4], [3, 2], [4, 1]]
let arr2 = [[3, 3], [3, 3]]

print(solution(arr1, arr2))
    
