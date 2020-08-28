//
//  main.swift
//  MakingArrayByResorting
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 자연수 뒤집어 배열로 만들기

// https://programmers.co.kr/learn/courses/30/lessons/12932

import Foundation

/*
func solution(_ n:Int64) -> [Int] {
    var result = [Int]()
    var varN = n
    while(varN>10) {
        if(varN/10>0) {
            result.append(Int(varN%10))
            varN = varN/10
        }
    }
    result.append(Int(varN))
    return result
}
*/

func solution(_ n:Int64) -> [Int] {
    return String(n).compactMap{ $0.hexDigitValue }.reversed()
}

let n = Int64(readLine()!)

print(solution(n!))
