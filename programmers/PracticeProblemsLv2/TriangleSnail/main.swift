//
//  main.swift
//  TriangleSnail
//
//  Created by Yongwoo Marco on 2021/02/18.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 삼각 달팽이

// https://programmers.co.kr/learn/courses/30/lessons/68645
// https://keeplo.tistory.com/186

import Foundation

func solution(_ n:Int) -> [Int] {
    var snail = [[Int]](), num = 1, limit = 0, f = 0, l = 0, fN = n, lN = n, point = ["down", "right", "up"]
    
    for i in 1...n {
        limit += i
        let middle = [Int](repeating: 0, count: i)
        snail.append(middle)
    }

    var now = point[0]
    
    while num <= limit {
        snail[f][l] = num
        
        switch now {
        case point[0]:
            if f+1 == fN {
                now = point[1]
                l += 1
            } else {
                f += 1
            }
        case point[1]:
            if l+1 == lN {
                now = point[2]
                f -= 1
                l -= 1
            } else {
                l += 1
            }
        case point[2]:
            if f-1 == n-lN {
                now = point[0]
                f += 1
                fN -= 1
                lN -= 2
            } else {
                f -= 1
                l -= 1
            }
        default:
            break
        }
        num += 1
    }
    
    return snail.reduce([]){ $0 + $1 }
}

//let n = 4
//let n = 5
let n = 7

print(solution(n))
