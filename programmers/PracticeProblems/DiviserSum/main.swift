//
//  main.swift
//  DiviserSum
//
//  Created by Yongwoo Marco on 2020/08/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
        
    for i in 1...n {
        if(n%i==0) {
            result += i
        }
    }
    return result
}

let n = Int(readLine()!)
print(solution(n!))
