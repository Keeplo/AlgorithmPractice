//
//  main.swift
//  TheNumberOfPAndY
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 문자열 내 p와 y의 개수

// https://programmers.co.kr/learn/courses/30/lessons/12916
// https://keeplo.tistory.com/110

import Foundation

/*
func solution(_ s:String) -> Bool {
    var check = [Int](repeating: 0, count: 2)
    _ = s.filter({ (c: Character) -> Bool in
        if(c == "y" || c == "Y") {
            check[0] += 1
            return true
        } else if (c == "p" || c == "P") {
            check[1] += 1
            return true
        }
        return false
    })
    
    if(check[0] == check[1]) {
        return true
    } else {
        return false
    }
}
*/
func solution(_ s:String) -> Bool {
    return s.lowercased().filter({ $0 == "p" }).count == s.lowercased().filter({ $0 == "y" }).count
}

let str = readLine()!

print(solution(str))
