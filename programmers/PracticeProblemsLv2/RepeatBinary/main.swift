//
//  main.swift
//  RepeatBinary
//
//  Created by Yongwoo Marco on 2021/02/19.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 이진 변환 반복하기

// https://programmers.co.kr/learn/courses/30/lessons/70129
// https://keeplo.tistory.com/185

import Foundation

func solution(_ s:String) -> [Int] {
    var str = s, zeroCount = 0, convertCount = 0
    
    while str != "1" {
        str = String(str.filter({ (c: String.Element) -> Bool in
            if String(c) == "0" {
                zeroCount += 1
                return false
            } else {
                return true
            }
        }).count, radix: 2 )
        convertCount += 1
    }
    
    
    return [convertCount, zeroCount]
}

let s = "110010101001"
//let s = "01110"
//let s = "1111111"

print(solution(s))
