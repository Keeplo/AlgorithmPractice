//
//  main.swift
//  1441
//
//  Created by Yongwoo Marco on 2021/05/02.
//

// 21.05.02
// 1441 Build an Array With Stack Operations
// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

func buildArray(_ target: [Int], _ n: Int) -> [String] {
    var now = 1, result = [String](), t = target
    
    while !t.isEmpty {
        if now == t.first! {
            result.append("Push")
            t.removeFirst()
        } else {
            result.append("Push")
            result.append("Pop")
        }
        now += 1
    }
    return result
}

//let target = [1, 3]
//let n = 3
//
//let target = [1, 2, 3]
//let n = 3
//
let target = [1, 2]
let n = 4

//let target = [2, 3, 4]
//let n = 4

print(buildArray(target, n))
