//
//  main.swift
//  1158
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 요세푸스 문제 1158

// https://www.acmicpc.net/problem/1158

import Foundation

var circle = [Int](), result = [Int]()
let str = readLine()!.components(separatedBy: " ").map({ Int($0)! })

for i in 1...str[0] {
    circle.append(i)
}

let max = str[1]
var (index, count) = (0, 1)

print("<", terminator: "")
while !circle.isEmpty {
//    print("now \(index) count \(count), circle \(circle)")
    
    if count == max {
        if circle.count == 1 {
            print("\(circle.remove(at: index))>", terminator: "")
        } else {
            print("\(circle.remove(at: index)), ", terminator: "")
        }
        count = 1
    } else if index >= circle.count {
        index = 0
    } else {
        if index + 1 >= circle.count {
            index=0
        } else {
            index+=1
        }
        count += 1
    }
}


