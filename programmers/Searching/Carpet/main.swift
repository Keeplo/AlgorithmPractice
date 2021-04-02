//
//  main.swift
//  Carpet
//
//  Created by Yongwoo Marco on 2021/04/02.
//

// 카펫 Lv 2, 완전탐색

// https://programmers.co.kr/learn/courses/30/lessons/42842/solution_groups?language=swift
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
        
    //  yellow's x*y == yellow
    //  (x+2)(y+2) - yellow == brown -> (x+2)(y+2) == brown + yellow
    //  x == yellow/y -> (yellow/y+2)(y+2) == brown + yellow
    //  yellow + 2*yellow/y + 2*y + 4 == brown + yellow
    // 2*y + (4 - brown) + 2 * yellow / y == 0
    // 2Y^2 + (4 - brown)Y + 2 * yellow == 0
    
    for i in 1 ... (yellow == 1 ? 2 : yellow/2) {
        if yellow % i == 0 {
            let x = yellow / i
            let y = i
            
            if 2*(x+2) + 2*y == brown {
                return [x+2, y+2]
            }
        }
    }
    
    return []
}


let brown = 10
let yellow = 2    // [4, 3]

//let brown = 8
//let yellow = 1    // [3, 3]

//let brown = 24
//let yellow = 24   // [8, 6]

print(solution(brown, yellow))


//0 0 0 0 0
//0 1 1 1 0
//0 1 1 1 0
//0 1 1 1 0
//0 0 0 0 0
//
//9*1 -> 22 + 2
//3*3 -> 10 + 6
//
//0 0 0 0 0 0    0 0 0 0 0 0 0 0 0 0
//0 1 1 1 1 0    0 1 1 1 1 1 1 1 1 0
//0 1 1 1 1 0    0 0 0 0 0 0 0 0 0 0
//0 0 0 0 0 0
//
//8*1 -> 20 + 2
//4*2 -> 10 + 4



// 0 0 0 0 0 0
// 0 0 0 0 0 0
// 0 0 0 0 0 0
// 0 0 0 0 0 0







