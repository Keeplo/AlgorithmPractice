//
//  main.swift
//  1406
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 에디터 1406

// https://www.acmicpc.net/problem/1406

import Foundation

var left = readLine()!
let cmdCound = Int(readLine()!)!
var right = ""

for _ in 0..<cmdCound {
    let cmd = readLine()!.components(separatedBy: " ")
    
    switch cmd[0] {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
    case "D":
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B":
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(cmd[1])
    }
    
//    print("cmd : \(cmd[0]), now : \(str.joined()), cursor : \(cursor)")
}

print(left + right.reversed())

