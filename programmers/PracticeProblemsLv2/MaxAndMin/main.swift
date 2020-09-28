//
//  main.swift
//  MaxAndMin
//
//  Created by Yongwoo Marco on 2020/09/05.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 최댓값과 최솟값

// https://programmers.co.kr/learn/courses/30/lessons/12939

// https://keeplo.tistory.com/138

import Foundation

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map({ Int($0)! })
    return String(arr.min()!)+" "+String(arr.max()!)
}

let str = readLine()!

print(solution(str))
