//
//  main.swift
//  10828
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 10828 스택

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


//pop: print(popLast()), empty -> -1
//size: print(.count)
//empty: .empty ? 1 : 0
//top: 스택의 가장 위에 있는 정수를 출력한다. 만약 스택에 들어있는 정수가 없는 경우에는 -1을 출력한다.
