//
//  main.swift
//  FindingDecimal
//
//  Created by Yongwoo Marco on 2020/08/16.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    var check = [Bool](repeating: true, count: n+1)
    var result = 0

    for i in 2...n {
        var j = 2
        while(true) {
            if(i*j > n) { break }
            check[i*j] = false
            j += 1
        }
    }
    for i in 2...n {
        if(check[i]) {
            result += 1
        }
    }
    return result
}

let n = Int(readLine()!)

print(solution(n!))
