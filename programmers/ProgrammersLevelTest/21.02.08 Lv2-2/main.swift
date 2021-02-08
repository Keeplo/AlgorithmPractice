//
//  main.swift
//  21.02.08 Lv2-2
//
//  Created by Yongwoo Marco on 2021/02/08.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var count = 0, removedZeros = 0
    var sArray = s.map({ String($0)})
        
    while sArray.joined() != "1" {
        let before = sArray.count
        sArray = sArray.filter({ $0 == "1" })
        let after = before - sArray.count
        removedZeros += after

        count += 1
        sArray = convert(num: sArray.count)
    }
    
    return [count, removedZeros]
}

func convert(num: Int) -> [String] {
    var result = [String](), i = num
    
    while i != 1 {
        if i%2 == 0 {
            result.insert("0", at: 0)
        } else {
            result.insert("1", at: 0)
        }
        i /= 2
    }
    
    result.insert("1", at: 0)
    
    return result
}

let s = "110010101001"

// let s = "01110"
// let s = "1111111"

print(solution(s))
