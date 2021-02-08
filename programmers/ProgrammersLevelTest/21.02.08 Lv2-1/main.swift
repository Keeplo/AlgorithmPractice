//
//  main.swift
//  21.02.08 Lv2-1
//
//  Created by Yongwoo Marco on 2021/02/08.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {
    var stack = [Character]()

    if stack.count%2 != 0 {
        return false
    }
    
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

print(solution(s))
