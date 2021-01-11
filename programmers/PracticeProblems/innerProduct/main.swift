//
//  main.swift
//  innerProduct
//
//  Created by Yongwoo Marco on 2021/01/11.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 내적

// https://programmers.co.kr/learn/courses/30/lessons/70128
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return Array(0..<a.count).reduce(0) {$0 + a[$1]*b[$1]}
}

let a = [1, 2, 3, 4]
let b = [-3, -1, 0, 2]

print(solution(a, b))
