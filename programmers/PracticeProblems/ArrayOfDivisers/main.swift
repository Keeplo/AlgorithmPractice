//
//  main.swift
//  ArrayOfDivisers
//
//  Created by Yongwoo Marco on 2020/08/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 나누어 떨어지는 숫자 배열

// https://programmers.co.kr/learn/courses/30/lessons/12910
// https://keeplo.tistory.com/114

import Foundation

/*
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    
    for i in arr {
        if(i%divisor==0) {
            result.append(i)
        }
    }
    
    result.isEmpty ? result.append(-1) : result.sort()
    
    return result
}
*/
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    return arr.filter({ $0%divisor==0 }).isEmpty ? [-1] : arr.filter({ $0%divisor==0 }).sorted(by: <)
}

let arr = readLine()!.components(separatedBy: " ").map({ Int($0)! })
let n = Int(readLine()!)

print(solution(arr, n!))
