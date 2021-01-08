//
//  main.swift
//  Budget
//
//  Created by Yongwoo Marco on 2021/01/08.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 예산

// https://programmers.co.kr/learn/courses/30/lessons/12982
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sorted = d.sorted(by: <)
    var b = budget

    while(b >= sorted[0]) {
        b -= sorted[0]
        sorted.remove(at: 0)
        if sorted.isEmpty {
            break
        } else {
            continue
        }
    }

    return d.count - sorted.count
}


//let d = [1,3,2,5,4]
let d = [2,2,3,3]

//let b = 9
let b = 10

print(solution(d, b))
