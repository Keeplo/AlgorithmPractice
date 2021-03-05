//
//  main.swift
//  FirstLoad
//
//  Created by Yongwoo Marco on 2021/03/05.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 방문 길이

// https://programmers.co.kr/learn/courses/30/lessons/49994
// https://keeplo.tistory.com/197

import Foundation


func solution(_ dirs:String) -> Int {
    let points = ["U":(1, 0), "D":(-1,0), "R":(0, 1), "L":(0, -1)] // (y, x)
    var past = [(Int, Int, Int, Int)](), c = (0, 0)
    
    for moves in dirs {
        let m = String(moves)
        let p = points[m]!
        
//        print("방향 : \(p)")
//        print("c : \(c), p : \((c.0 + p.0, c.1 + p.1))")
        
        let nextY = c.0 + p.0
        let nextX = c.1 + p.1
        
        if nextX <= 5, nextX >= -5, nextY <= 5, nextY >= -5 {
            if past.filter({ $0 == (c.0, c.1, nextY, nextX) || $0 == (nextY, nextX, c.0, c.1) }).count == 0 {
                past.append( (c.0, c.1, nextY, nextX) )
            }
            c = (c.0 + p.0, c.1 + p.1)
        }
    }
    
    return past.count
}

let dirs = "ULURRDLLU"    // 7
//let dirs = "LULLLLLLU"    // 7

print(solution(dirs))
