//
//  main.swift
//  KthNumber
//
//  Created by Yongwoo Marco on 2020/08/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// K번째수

// https://programmers.co.kr/learn/courses/30/lessons/42748
// https://keeplo.tistory.com/121

import Foundation
/*
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for command in commands {
        let arr = array[command[0]-1...command[1]-1]
        let array = arr.sorted()
        let index = command[2]-1
            
        result.append(array[index])
    }
    
    return result
}

let arr = readLine()!.components(separatedBy: " ").map({ Int($0)! })
let n = Int(readLine()!)

var commands = [[Int]]()

for _ in 0..<n! {
    let small = readLine()!.components(separatedBy: " ").map({ Int($0)! })
    commands.append(small)
}
*/

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({ array[$0[0]-1...$0[1]-1].sorted(by: < )[$0[2]-1] })
}

let arr = [1, 5, 2, 6, 3, 7, 4]
let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
    
print(solution(arr, commands))
