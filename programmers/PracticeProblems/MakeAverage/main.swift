//
//  main.swift
//  MakeAverage
//
//  Created by Yongwoo Marco on 2020/08/16.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

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
