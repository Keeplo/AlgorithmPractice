//
//  main.swift
//  1874
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 스택 수열 1874

// https://www.acmicpc.net/problem/1874

import Foundation

let max = Int(readLine()!)!
var stack = [Int](), inputs = [Int](), result = [String](), num = 1

for _ in 0..<max {
    inputs.append( Int(readLine()!)! )
}

while !inputs.isEmpty {
    if let last = stack.last, last == inputs[0] {
        stack.removeLast()
        inputs.removeFirst()
        result.append("-")
    } else if let last = stack.last, last > inputs[0] {
        result.removeAll()
        result.append("NO")
        break
    } else {
        stack.append(num)
        num += 1
        result.append("+")
    }
}

result.map({ print($0) })
