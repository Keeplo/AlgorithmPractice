//
//  main.swift
//  NumberAndSumOfDivisors
//
//  Created by Yongwoo Marco on 2021/05/14.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 약수의 개수와 덧셈

// https://programmers.co.kr/learn/courses/30/lessons/77884
// https://keeplo.tistory.com/227

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    return (left...right).map({ num -> Int in
        var count = 0
        
        for i in 1...num {
            if num % i == 0 {
                count += 1
            }
        }
//        print("num \(num) count \(count)")
        return count%2 == 0 ? num : -num
    }).reduce(0, +)
}

print(solution(13, 17)) // 43
print(solution(24, 27)) // 52
