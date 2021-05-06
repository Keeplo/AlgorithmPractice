//
//  main.swift
//  MaximumElement
//
//  Created by Yongwoo Marco on 2021/05/04.
//

// Maximum Element
// https://www.hackerrank.com/challenges/maximum-element/problem

import Foundation

func getMax(operations: [String]) -> [Int] {
    var stack = [Int](), result = [Int]()
    
    for op in operations {
        let ops = op.components(separatedBy: " ").map({Int($0)})
        if ops.count > 1 {
            stack.append(ops[1]!)
        } else {
            if ops[0]! == 2 {
                stack.removeLast()
            } else {
                result.append(stack.max()!)
            }
        }
    }
    
    return result
}

let operations = ["1 97", "2", "1 20", "2", "1 26", "1 20", "2", "3", "1 91", "3"]

print(getMax(operations: operations))
