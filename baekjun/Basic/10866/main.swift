//
//  main.swift
//  10866
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 덱 10866

// https://www.acmicpc.net/problem/10866

import Foundation

if let count = Int(readLine()!) {
    var deque = [Int]()
    
    for _ in 0..<count {
        let cmd = readLine()!.components(separatedBy: " ")
        
        switch cmd[0] {
        case "push_front":
            deque.insert(Int(cmd[1])!, at: 0)
        case "push_back":
            deque.append(Int(cmd[1])!)
        case "pop_front":
            if !deque.isEmpty {
                print(deque.removeFirst())
            } else {
                print(-1)
            }
        case "pop_back":
            if !deque.isEmpty {
                print(deque.removeLast())
            } else {
                print(-1)
            }
        case "empty":
            print(deque.isEmpty ? 1 : 0)
        case "front":
            if let front = deque.first {
                print(front)
            } else {
                print(-1)
            }
        case "back":
            if let last = deque.last {
                print(last)
            } else {
                print(-1)
            }
        default:
            // "size"
            print(deque.count)
        }
    }
}

