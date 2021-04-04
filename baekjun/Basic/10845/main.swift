//
//  main.swift
//  10845
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 큐 10845

// https://www.acmicpc.net/problem/10845

import Foundation

if let count = Int(readLine()!) {
    var q = [Int]()
    
    for _ in 0..<count {
        let cmd = readLine()!.components(separatedBy: " ")
        
        switch cmd[0] {
        case "pop":
            if !q.isEmpty {
                print(q.removeFirst())
            } else {
                print(-1)
            }
        case "size":
            print(q.count)
        case "empty":
            print(q.isEmpty ? 1 : 0)
        case "front":
            if let front = q.first {
                print(front)
            } else {
                print(-1)
            }
        case "back":
            if let last = q.last {
                print(last)
            } else {
                print(-1)
            }
        default:
            q.append(Int(cmd[1])!)
        }
    }
}

