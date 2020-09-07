//
//  main.swift
//  BasicOfHadlingString
//
//  Created by Yongwoo Marco on 2020/08/18.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 문자열 다루기 기본

// https://programmers.co.kr/learn/courses/30/lessons/12918

// https://keeplo.tistory.com/108

import Foundation

/*
func solution(_ s:String) -> Bool {
    
    for c in s {
        if(!c.isNumber || (s.count == 4 || s.count == 6)) {
            return false
        }
    }
    return true
}
 */
func solution(_ s:String) -> Bool {
    return s.compactMap({ Int(String($0)) }).count == s.count && (s.count == 4 || s.count == 6)
}

let str = readLine()!

print(solution(str))
