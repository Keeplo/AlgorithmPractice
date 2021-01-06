//
//  main.swift
//  AddTwoNums
//
//  Created by Yongwoo Marco on 2021/01/06.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 두 개 뽑아서 더하기

// https://programmers.co.kr/learn/courses/30/lessons/68644
// https://keeplo.tistory.com/162


import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: Set<Int> = []
    
    for i in 0..<numbers.count {
        if i != numbers.count-1 {
            for j in numbers[i+1...numbers.count-1] {
                print("i(\(numbers[i])) + j(\(j)) = \(numbers[i]+j)")
                result.update(with: numbers[i]+j)
            }
        }
    }
    
    return result.sorted(by: <)
}

let nums = [2,1,3,4,1]
//let nums = [5,0,2,7]

print(solution(nums))
