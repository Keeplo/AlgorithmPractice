//
//  main.swift
//  9012
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 괄호 9012

// https://www.acmicpc.net/problem/9012

import Foundation

let count = Int(readLine()!)!

for _ in 0..<count {
    var s = [Character]()
    
    for c in readLine()! {
        if let last = s.last, last == "(" {
            if last != c {
                s.removeLast()
            } else {
                s.append(c)
            }
        } else {
            s.append(c)
        }
    }
    s.isEmpty ? print("YES") : print("NO")
}
