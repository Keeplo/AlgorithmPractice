//
//  main.swift
//  1047
//
//  Created by Yongwoo Marco on 2021/05/02.
//

// 21.05.02
// 1047 Remove All Adjacent Duplicates In String
// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

func removeDuplicates(_ S: String) -> String {
    var stack = [Character]()
    
    for s in S {
        if let last = stack.last {
            if last == Character(extendedGraphemeClusterLiteral: s) {
                stack.removeLast()
            } else {
                stack.append(s)
            }
        } else {
            stack.append(s)
        }
    }
    
    return stack.reduce("") { $0 + String($1) }
}

let S = "abbaca"

print(removeDuplicates(S))
