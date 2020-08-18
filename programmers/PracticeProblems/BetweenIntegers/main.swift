//
//  main.swift
//  BetweenIntegers
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//


// 두 정수 사이의 합
// https://programmers.co.kr/learn/courses/30/lessons/12912

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var result:Int64 = 0
    
    if(a>b) {
        for i in b...a {
            result += Int64(i)
        }
    } else if(a<b) {
        for i in a...b {
            result += Int64(i)
        }
    } else {
        result = Int64(a)
    }
    return result
}

let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
print(solution(arr[0], arr[1]))
