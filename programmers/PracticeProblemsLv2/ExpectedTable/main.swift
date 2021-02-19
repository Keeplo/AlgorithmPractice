//
//  main.swift
//  ExpectedTable
//
//  Created by Yongwoo Marco on 2021/02/19.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 예상대진표 (2017 팁스타운 Lv2)

// https://programmers.co.kr/learn/courses/30/lessons/12985
// https://keeplo.tistory.com/184

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var A = a, B = b, round = 1
    
    print("\(A), \(B)")

    while round < n/2-1 {
        print("Round\(round) A \(A) B \(B)")
        if abs(Int32(A-B)) == 1 {
            return round
        }
        A = ( A % 2 == 1 ? (A + 1)/2 : A/2 )
        B = ( B % 2 == 1 ? (B + 1)/2 : B/2 )
        round += 1
    }

    print("Round\(round) A \(A) B \(B)")
    return round
}

//func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
//    var A = a, B = b, round = 0
//
//    print("\(A), \(B)")
//
//    while A != B {
//        print("Round\(round) A \(A) B \(B)")
//        A = ( A % 2 == 1 ? (A + 1)/2 : A/2 )
//        B = ( B % 2 == 1 ? (B + 1)/2 : B/2 )
//        round += 1
//    }
//
//    print("Round\(round) A \(A) B \(B)")
//    return round
//}

let n = 2
let a = 2
let b = 1

print(solution(n, a, b))
