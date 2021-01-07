//
//  main.swift
//  SwitchTernaryScale
//
//  Created by Yongwoo Marco on 2021/01/07.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

//func solution(_ n:Int) -> Int {
//    var divide = n
//    var ternary = [Int]()
//
//    while(divide>0) {
//        if divide<3 {
//            ternary.insert(divide, at: 0)
//            divide = 0
//        } else {
//            ternary.insert(divide%3, at: 0)
//            divide /= 3
//        }
//    }
//
//    for index in 0..<ternary.count {
//        ternary[index] *= Int(pow(Double(3), Double(index)))
//    }
//
//    return ternary.reduce(0, +)
//}

func solution(_ n:Int) -> Int {
    let ternary = String(n, radix: 3)
    let result = Int(String(ternary.reversed()),radix:3)!
    
    return result
}

let n = 45

print(solution(n))

