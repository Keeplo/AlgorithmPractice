//
//  main.swift
//  JumpAndTeleport
//
//  Created by Yongwoo Marco on 2021/02/20.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 점프와 순간이동

// https://programmers.co.kr/learn/courses/30/lessons/12980
// https://keeplo.tistory.com/188

import Foundation

func solution(_ n:Int) -> Int {
    var distance = n, cost = 0
    
    while distance != 0 {
        if distance % 2 == 1 {
            cost += 1
        }
        
        distance /= 2
    }
    
    return cost
}

//let n = 5       // 2
//let n = 6       // 2
let n = 5000    // 5

print(solution(n))
