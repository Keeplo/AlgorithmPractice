//
//  main.swift
//  CorrectBracket
//
//  Created by Yongwoo Marco on 2021/02/08.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 올바른 괄호

// https://programmers.co.kr/learn/courses/30/lessons/12909
// https://keeplo.tistory.com/176

import Foundation

func solution(_ s:String) -> Bool {
    var stack = [Character]()
    
    for c in s {
        if c == Character("(") {
            stack.append(c)
        } else {
            if c == Character(")"), stack.isEmpty == true {
                return false
            }
            _ = stack.popLast()
        }
    }

    return stack.count > 0 ? false : true
}


let s = "(())()"
// let s = "(())()"
// let s = ")()("
// let s = "(()("

print(solution(s))
