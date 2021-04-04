//
//  main.swift
//  10828
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 스택 10828

// https://www.acmicpc.net/problem/10828

import Foundation

let n = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<n {
    let cmd = readLine()!.components(separatedBy: " ")

    switch cmd[0] {
    case "pop":
        if let pop = stack.popLast() {
            print(pop)
        } else {
            print("-1")
        }
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? "1" : "0")
    case "top":
        if let last = stack.last {
            print(last)
        } else {
            print("-1")
        }
    default:
        stack.append(Int(cmd[1])!)
    }
}

